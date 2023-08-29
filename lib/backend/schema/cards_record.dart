import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CardsRecord extends FirestoreRecord {
  CardsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "cardNumber" field.
  int? _cardNumber;
  int get cardNumber => _cardNumber ?? 0;
  bool hasCardNumber() => _cardNumber != null;

  // "dateTillValid" field.
  String? _dateTillValid;
  String get dateTillValid => _dateTillValid ?? '';
  bool hasDateTillValid() => _dateTillValid != null;

  // "CVV" field.
  int? _cvv;
  int get cvv => _cvv ?? 0;
  bool hasCvv() => _cvv != null;

  void _initializeFields() {
    _cardNumber = castToType<int>(snapshotData['cardNumber']);
    _dateTillValid = snapshotData['dateTillValid'] as String?;
    _cvv = castToType<int>(snapshotData['CVV']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cards');

  static Stream<CardsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CardsRecord.fromSnapshot(s));

  static Future<CardsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CardsRecord.fromSnapshot(s));

  static CardsRecord fromSnapshot(DocumentSnapshot snapshot) => CardsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CardsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CardsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CardsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CardsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCardsRecordData({
  int? cardNumber,
  String? dateTillValid,
  int? cvv,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'cardNumber': cardNumber,
      'dateTillValid': dateTillValid,
      'CVV': cvv,
    }.withoutNulls,
  );

  return firestoreData;
}

class CardsRecordDocumentEquality implements Equality<CardsRecord> {
  const CardsRecordDocumentEquality();

  @override
  bool equals(CardsRecord? e1, CardsRecord? e2) {
    return e1?.cardNumber == e2?.cardNumber &&
        e1?.dateTillValid == e2?.dateTillValid &&
        e1?.cvv == e2?.cvv;
  }

  @override
  int hash(CardsRecord? e) =>
      const ListEquality().hash([e?.cardNumber, e?.dateTillValid, e?.cvv]);

  @override
  bool isValidKey(Object? o) => o is CardsRecord;
}
