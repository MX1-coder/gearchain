import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotificationLowStockRecord extends FirestoreRecord {
  NotificationLowStockRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "lowStockNotification" field.
  String? _lowStockNotification;
  String get lowStockNotification => _lowStockNotification ?? '';
  bool hasLowStockNotification() => _lowStockNotification != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _lowStockNotification = snapshotData['lowStockNotification'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('notificationLowStock')
          : FirebaseFirestore.instance.collectionGroup('notificationLowStock');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('notificationLowStock').doc();

  static Stream<NotificationLowStockRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => NotificationLowStockRecord.fromSnapshot(s));

  static Future<NotificationLowStockRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => NotificationLowStockRecord.fromSnapshot(s));

  static NotificationLowStockRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NotificationLowStockRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NotificationLowStockRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NotificationLowStockRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NotificationLowStockRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NotificationLowStockRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNotificationLowStockRecordData({
  String? lowStockNotification,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'lowStockNotification': lowStockNotification,
    }.withoutNulls,
  );

  return firestoreData;
}

class NotificationLowStockRecordDocumentEquality
    implements Equality<NotificationLowStockRecord> {
  const NotificationLowStockRecordDocumentEquality();

  @override
  bool equals(NotificationLowStockRecord? e1, NotificationLowStockRecord? e2) {
    return e1?.lowStockNotification == e2?.lowStockNotification;
  }

  @override
  int hash(NotificationLowStockRecord? e) =>
      const ListEquality().hash([e?.lowStockNotification]);

  @override
  bool isValidKey(Object? o) => o is NotificationLowStockRecord;
}
