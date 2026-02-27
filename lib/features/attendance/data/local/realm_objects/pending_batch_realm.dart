import 'package:realm/realm.dart';

part 'pending_batch_realm.realm.dart';

/// Realm model for an offline attendance batch waiting to sync.
/// Generated class: [PendingBatchRealm]
@RealmModel()
class $PendingBatchRealm {
  @PrimaryKey()
  late ObjectId id;

  late String attendanceDate;

  /// JSON-encoded list of makhdom IDs.
  late String makhdomsIdsJson;

  late String points;

  late DateTime createdAt;
}
