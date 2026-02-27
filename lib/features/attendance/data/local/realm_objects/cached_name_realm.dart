import 'package:realm/realm.dart';

part 'cached_name_realm.realm.dart';

/// Realm model for a downloaded name entry.
/// Generated class: [CachedName]
@RealmModel()
class $CachedName {
  @PrimaryKey()
  late int id;

  late String name;
}
