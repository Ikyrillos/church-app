# Backend Requirements – General Meetings Attendance (Module 1)

These changes are needed in the **NestJS** backend to fully support the offline-first
attendance feature implemented in the Flutter app.

---

## 1. `GET /makhdom/getallnames` – Add optional filter query params

The Flutter app calls this endpoint with optional filter parameters when the servant
downloads the names list for a specific service or stage.

### Required changes
Add two **optional** query parameters:

| Param | Type | Description |
|---|---|---|
| `levelId` | `number` (optional) | Filter names by stage/level (مرحلة). If omitted, return all. |
| `serviceId` | `number` (optional) | Filter names by service type (خدمة). If omitted, return all. |

### Example requests
```
GET /makhdom/getallnames               → all names
GET /makhdom/getallnames?levelId=2     → names for level 2 only
GET /makhdom/getallnames?serviceId=3   → names for service 3 only
GET /makhdom/getallnames?levelId=1&serviceId=2  → combined filter
```

### Expected response (unchanged format)
```json
{
  "success": true,
  "data": [
    { "id": 101, "name": "يوحنا سمير" },
    { "id": 102, "name": "مريم طارق" }
  ],
  "errorMsg": null
}
```

### NestJS implementation hint
```typescript
// attendance/makhdom.controller.ts
@Get('getallnames')
getAllNames(
  @Query('levelId') levelId?: number,
  @Query('serviceId') serviceId?: number,
) {
  return this.makhdomService.getAllNames({ levelId, serviceId });
}

// makhdom.service.ts
async getAllNames(filters: { levelId?: number; serviceId?: number }) {
  const where: any = {};
  if (filters.levelId) where.levelId = filters.levelId;
  if (filters.serviceId) where.serviceId = filters.serviceId;
  return this.makhdomRepo.find({ where, select: ['id', 'name'] });
}
```

---

## 2. `GET /attendance` – Confirm array support for `makhdomsId`

The Flutter app submits attendance as a batch with an array of IDs.

### Current call format (Flutter → API)
```
GET /attendance?attendanceDate=2025-12-01&makhdomsId[]=101&makhdomsId[]=102&points=0
```

Or as JSON body if switched to POST:
```json
{
  "attendanceDate": "2025-12-01",
  "makhdomsId": [101, 102, 105],
  "points": "0"
}
```

### Verification needed
- Confirm that the endpoint correctly handles `makhdomsId` as an **array of integers**.
- If using query params, ensure the framework parses repeated params as an array
  (NestJS does this automatically with `@Query('makhdomsId') ids: number[]`).

### Recommended: switch to POST for batch submissions
```typescript
@Post()
addAttendance(@Body() dto: AddAttendanceDto) { ... }

// dto
export class AddAttendanceDto {
  @IsDateString()
  attendanceDate: string;

  @IsArray()
  @IsInt({ each: true })
  makhdomsId: number[];

  @IsOptional()
  points?: number;
}
```

---

## 3. Pending offline batches – same endpoint, multiple calls

The Flutter app stores unsent batches locally in SQLite
(`PendingAttendanceBatches` table) and replays them one-by-one when connectivity
returns. Each replay is a standard call to `/attendance` with one batch's data.

**No new endpoint is required**, but the backend should be **idempotent**: if the
same batch is submitted twice (e.g., due to a retry), duplicate attendance records
should not be created. Consider deduplicating on `(makhdomId, attendanceDate)`.

---

## 4. Future: named service/level lookup endpoint (optional)

To make the Flutter download-filter dialog dynamic (instead of hardcoded levels 1-5),
add a lightweight lookup endpoint:

```
GET /levels        → [{ id: 1, name: "المرحلة 1" }, ...]
GET /services      → [{ id: 1, name: "خدمة الشباب" }, ...]
```

This is **not required for the current release** but will be needed once the
filter options are made configurable from the server.
