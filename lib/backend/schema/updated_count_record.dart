import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UpdatedCountRecord extends FirestoreRecord {
  UpdatedCountRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "UpdateScannerCount" field.
  int? _updateScannerCount;
  int get updateScannerCount => _updateScannerCount ?? 0;
  bool hasUpdateScannerCount() => _updateScannerCount != null;

  void _initializeFields() {
    _updateScannerCount = castToType<int>(snapshotData['UpdateScannerCount']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('updatedCount');

  static Stream<UpdatedCountRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UpdatedCountRecord.fromSnapshot(s));

  static Future<UpdatedCountRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UpdatedCountRecord.fromSnapshot(s));

  static UpdatedCountRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UpdatedCountRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UpdatedCountRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UpdatedCountRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UpdatedCountRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UpdatedCountRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUpdatedCountRecordData({
  int? updateScannerCount,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'UpdateScannerCount': updateScannerCount,
    }.withoutNulls,
  );

  return firestoreData;
}

class UpdatedCountRecordDocumentEquality
    implements Equality<UpdatedCountRecord> {
  const UpdatedCountRecordDocumentEquality();

  @override
  bool equals(UpdatedCountRecord? e1, UpdatedCountRecord? e2) {
    return e1?.updateScannerCount == e2?.updateScannerCount;
  }

  @override
  int hash(UpdatedCountRecord? e) =>
      const ListEquality().hash([e?.updateScannerCount]);

  @override
  bool isValidKey(Object? o) => o is UpdatedCountRecord;
}
