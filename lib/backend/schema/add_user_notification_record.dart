import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AddUserNotificationRecord extends FirestoreRecord {
  AddUserNotificationRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "addUserNotification" field.
  String? _addUserNotification;
  String get addUserNotification => _addUserNotification ?? '';
  bool hasAddUserNotification() => _addUserNotification != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _addUserNotification = snapshotData['addUserNotification'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('addUserNotification')
          : FirebaseFirestore.instance.collectionGroup('addUserNotification');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('addUserNotification').doc();

  static Stream<AddUserNotificationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AddUserNotificationRecord.fromSnapshot(s));

  static Future<AddUserNotificationRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => AddUserNotificationRecord.fromSnapshot(s));

  static AddUserNotificationRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AddUserNotificationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AddUserNotificationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AddUserNotificationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AddUserNotificationRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AddUserNotificationRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAddUserNotificationRecordData({
  String? addUserNotification,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'addUserNotification': addUserNotification,
    }.withoutNulls,
  );

  return firestoreData;
}

class AddUserNotificationRecordDocumentEquality
    implements Equality<AddUserNotificationRecord> {
  const AddUserNotificationRecordDocumentEquality();

  @override
  bool equals(AddUserNotificationRecord? e1, AddUserNotificationRecord? e2) {
    return e1?.addUserNotification == e2?.addUserNotification;
  }

  @override
  int hash(AddUserNotificationRecord? e) =>
      const ListEquality().hash([e?.addUserNotification]);

  @override
  bool isValidKey(Object? o) => o is AddUserNotificationRecord;
}
