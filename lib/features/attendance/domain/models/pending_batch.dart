/// Domain model for an attendance batch waiting to sync to the server.
/// [id] is the Realm ObjectId hex-string; null for batches not yet persisted.
class PendingBatch {
  final String? id;
  final String attendanceDate;
  final List<int> makhdomsIds;
  final String points;
  final DateTime createdAt;

  const PendingBatch({
    this.id,
    required this.attendanceDate,
    required this.makhdomsIds,
    required this.points,
    required this.createdAt,
  });
}
