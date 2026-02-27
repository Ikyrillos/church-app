// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cached_name_realm.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
class CachedName extends $CachedName
    with RealmEntity, RealmObjectBase, RealmObject {
  CachedName(
    int id,
    String name,
  ) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'name', name);
  }

  CachedName._();

  @override
  int get id => RealmObjectBase.get<int>(this, 'id') as int;
  @override
  set id(int value) => RealmObjectBase.set(this, 'id', value);

  @override
  String get name => RealmObjectBase.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObjectBase.set(this, 'name', value);

  @override
  Stream<RealmObjectChanges<CachedName>> get changes =>
      RealmObjectBase.getChanges<CachedName>(this);

  @override
  Stream<RealmObjectChanges<CachedName>> changesFor([List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<CachedName>(this, keyPaths);

  @override
  CachedName freeze() => RealmObjectBase.freezeObject<CachedName>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'id': id.toEJson(),
      'name': name.toEJson(),
    };
  }

  static EJsonValue _toEJson(CachedName value) => value.toEJson();
  static CachedName _fromEJson(EJsonValue ejson) {
    if (ejson is! Map<String, dynamic>) return raiseInvalidEJson(ejson);
    return switch (ejson) {
      {
        'id': EJsonValue id,
        'name': EJsonValue name,
      } =>
        CachedName(
          fromEJson(id),
          fromEJson(name),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(CachedName._);
    register(_toEJson, _fromEJson);
    return const SchemaObject(
        ObjectType.realmObject, CachedName, 'CachedName', [
      SchemaProperty('id', RealmPropertyType.int, primaryKey: true),
      SchemaProperty('name', RealmPropertyType.string),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}
