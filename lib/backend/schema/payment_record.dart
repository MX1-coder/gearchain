import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PaymentRecord extends FirestoreRecord {
  PaymentRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "plan" field.
  String? _plan;
  String get plan => _plan ?? '';
  bool hasPlan() => _plan != null;

  // "amountPlan1" field.
  bool? _amountPlan1;
  bool get amountPlan1 => _amountPlan1 ?? false;
  bool hasAmountPlan1() => _amountPlan1 != null;

  // "amountPlan2" field.
  bool? _amountPlan2;
  bool get amountPlan2 => _amountPlan2 ?? false;
  bool hasAmountPlan2() => _amountPlan2 != null;

  // "amountPlan3" field.
  bool? _amountPlan3;
  bool get amountPlan3 => _amountPlan3 ?? false;
  bool hasAmountPlan3() => _amountPlan3 != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  void _initializeFields() {
    _plan = snapshotData['plan'] as String?;
    _amountPlan1 = snapshotData['amountPlan1'] as bool?;
    _amountPlan2 = snapshotData['amountPlan2'] as bool?;
    _amountPlan3 = snapshotData['amountPlan3'] as bool?;
    _price = castToType<double>(snapshotData['price']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('payment');

  static Stream<PaymentRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PaymentRecord.fromSnapshot(s));

  static Future<PaymentRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PaymentRecord.fromSnapshot(s));

  static PaymentRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PaymentRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PaymentRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PaymentRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PaymentRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PaymentRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPaymentRecordData({
  String? plan,
  bool? amountPlan1,
  bool? amountPlan2,
  bool? amountPlan3,
  double? price,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'plan': plan,
      'amountPlan1': amountPlan1,
      'amountPlan2': amountPlan2,
      'amountPlan3': amountPlan3,
      'price': price,
    }.withoutNulls,
  );

  return firestoreData;
}

class PaymentRecordDocumentEquality implements Equality<PaymentRecord> {
  const PaymentRecordDocumentEquality();

  @override
  bool equals(PaymentRecord? e1, PaymentRecord? e2) {
    return e1?.plan == e2?.plan &&
        e1?.amountPlan1 == e2?.amountPlan1 &&
        e1?.amountPlan2 == e2?.amountPlan2 &&
        e1?.amountPlan3 == e2?.amountPlan3 &&
        e1?.price == e2?.price;
  }

  @override
  int hash(PaymentRecord? e) => const ListEquality().hash(
      [e?.plan, e?.amountPlan1, e?.amountPlan2, e?.amountPlan3, e?.price]);

  @override
  bool isValidKey(Object? o) => o is PaymentRecord;
}
