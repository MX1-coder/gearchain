import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotificationRecord extends FirestoreRecord {
  NotificationRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "stockNotifitcation" field.
  bool? _stockNotifitcation;
  bool get stockNotifitcation => _stockNotifitcation ?? false;
  bool hasStockNotifitcation() => _stockNotifitcation != null;

  // "text" field.
  String? _text;
  String get text => _text ?? '';
  bool hasText() => _text != null;

  // "notificationTime" field.
  DateTime? _notificationTime;
  DateTime? get notificationTime => _notificationTime;
  bool hasNotificationTime() => _notificationTime != null;

  // "addUserNotification" field.
  String? _addUserNotification;
  String get addUserNotification => _addUserNotification ?? '';
  bool hasAddUserNotification() => _addUserNotification != null;

  void _initializeFields() {
    _stockNotifitcation = snapshotData['stockNotifitcation'] as bool?;
    _text = snapshotData['text'] as String?;
    _notificationTime = snapshotData['notificationTime'] as DateTime?;
    _addUserNotification = snapshotData['addUserNotification'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('notification');

  static Stream<NotificationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NotificationRecord.fromSnapshot(s));

  static Future<NotificationRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NotificationRecord.fromSnapshot(s));

  static NotificationRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NotificationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NotificationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NotificationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NotificationRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NotificationRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNotificationRecordData({
  bool? stockNotifitcation,
  String? text,
  DateTime? notificationTime,
  String? addUserNotification,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'stockNotifitcation': stockNotifitcation,
      'text': text,
      'notificationTime': notificationTime,
      'addUserNotification': addUserNotification,
    }.withoutNulls,
  );

  return firestoreData;
}

class NotificationRecordDocumentEquality
    implements Equality<NotificationRecord> {
  const NotificationRecordDocumentEquality();

  @override
  bool equals(NotificationRecord? e1, NotificationRecord? e2) {
    return e1?.stockNotifitcation == e2?.stockNotifitcation &&
        e1?.text == e2?.text &&
        e1?.notificationTime == e2?.notificationTime &&
        e1?.addUserNotification == e2?.addUserNotification;
  }

  @override
  int hash(NotificationRecord? e) => const ListEquality().hash([
        e?.stockNotifitcation,
        e?.text,
        e?.notificationTime,
        e?.addUserNotification
      ]);

  @override
  bool isValidKey(Object? o) => o is NotificationRecord;
}
