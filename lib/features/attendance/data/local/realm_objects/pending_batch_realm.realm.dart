// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pending_batch_realm.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
class PendingBatchRealm extends $PendingBatchRealm
    with RealmEntity, RealmObjectBase, RealmObject {
  PendingBatchRealm(
    ObjectId id,
    String attendanceDate,
    String makhdomsIdsJson,
    String points,
    DateTime createdAt,
  ) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'attendanceDate', attendanceDate);
    RealmObjectBase.set(this, 'makhdomsIdsJson', makhdomsIdsJson);
    RealmObjectBase.set(this, 'points', points);
    RealmObjectBase.set(this, 'createdAt', createdAt);
  }

  PendingBatchRealm._();

  @override
  ObjectId get id => RealmObjectBase.get<ObjectId>(this, 'id') as ObjectId;
  @override
  set id(ObjectId value) => RealmObjectBase.set(this, 'id', value);

  @override
  String get attendanceDate =>
      RealmObjectBase.get<String>(this, 'attendanceDate') as String;
  @override
  set attendanceDate(String value) =>
      RealmObjectBase.set(this, 'attendanceDate', value);

  @override
  String get makhdomsIdsJson =>
      RealmObjectBase.get<String>(this, 'makhdomsIdsJson') as String;
  @override
  set makhdomsIdsJson(String value) =>
      RealmObjectBase.set(this, 'makhdomsIdsJson', value);

  @override
  String get points => RealmObjectBase.get<String>(this, 'points') as String;
  @override
  set points(String value) => RealmObjectBase.set(this, 'points', value);

  @override
  DateTime get createdAt =>
      RealmObjectBase.get<DateTime>(this, 'createdAt') as DateTime;
  @override
  set createdAt(DateTime value) =>
      RealmObjectBase.set(this, 'createdAt', value);

  @override
  Stream<RealmObjectChanges<PendingBatchRealm>> get changes =>
      RealmObjectBase.getChanges<PendingBatchRealm>(this);

  @override
  Stream<RealmObjectChanges<PendingBatchRealm>> changesFor(
          [List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<PendingBatchRealm>(this, keyPaths);

  @override
  PendingBatchRealm freeze() =>
      RealmObjectBase.freezeObject<PendingBatchRealm>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'id': id.toEJson(),
      'attendanceDate': attendanceDate.toEJson(),
      'makhdomsIdsJson': makhdomsIdsJson.toEJson(),
      'points': points.toEJson(),
      'createdAt': createdAt.toEJson(),
    };
  }

  static EJsonValue _toEJson(PendingBatchRealm value) => value.toEJson();
  static PendingBatchRealm _fromEJson(EJsonValue ejson) {
    if (ejson is! Map<String, dynamic>) return raiseInvalidEJson(ejson);
    return switch (ejson) {
      {
        'id': EJsonValue id,
        'attendanceDate': EJsonValue attendanceDate,
        'makhdomsIdsJson': EJsonValue makhdomsIdsJson,
        'points': EJsonValue points,
        'createdAt': EJsonValue createdAt,
      } =>
        PendingBatchRealm(
          fromEJson(id),
          fromEJson(attendanceDate),
          fromEJson(makhdomsIdsJson),
          fromEJson(points),
          fromEJson(createdAt),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(PendingBatchRealm._);
    register(_toEJson, _fromEJson);
    return const SchemaObject(
        ObjectType.realmObject, PendingBatchRealm, 'PendingBatchRealm', [
      SchemaProperty('id', RealmPropertyType.objectid, primaryKey: true),
      SchemaProperty('attendanceDate', RealmPropertyType.string),
      SchemaProperty('makhdomsIdsJson', RealmPropertyType.string),
      SchemaProperty('points', RealmPropertyType.string),
      SchemaProperty('createdAt', RealmPropertyType.timestamp),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}
