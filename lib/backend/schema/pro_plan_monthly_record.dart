import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProPlanMonthlyRecord extends FirestoreRecord {
  ProPlanMonthlyRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "specifications" field.
  String? _specifications;
  String get specifications => _specifications ?? '';
  bool hasSpecifications() => _specifications != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "modified_at" field.
  DateTime? _modifiedAt;
  DateTime? get modifiedAt => _modifiedAt;
  bool hasModifiedAt() => _modifiedAt != null;

  // "on_sale" field.
  bool? _onSale;
  bool get onSale => _onSale ?? false;
  bool hasOnSale() => _onSale != null;

  // "sale_price" field.
  double? _salePrice;
  double get salePrice => _salePrice ?? 0.0;
  bool hasSalePrice() => _salePrice != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "plantype" field.
  String? _plantype;
  String get plantype => _plantype ?? '';
  bool hasPlantype() => _plantype != null;

  // "price" field.
  int? _price;
  int get price => _price ?? 0;
  bool hasPrice() => _price != null;

  // "oldprice" field.
  String? _oldprice;
  String get oldprice => _oldprice ?? '';
  bool hasOldprice() => _oldprice != null;

  // "transactionFees" field.
  double? _transactionFees;
  double get transactionFees => _transactionFees ?? 0.0;
  bool hasTransactionFees() => _transactionFees != null;

  // "Totalprice" field.
  double? _totalprice;
  double get totalprice => _totalprice ?? 0.0;
  bool hasTotalprice() => _totalprice != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _specifications = snapshotData['specifications'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _modifiedAt = snapshotData['modified_at'] as DateTime?;
    _onSale = snapshotData['on_sale'] as bool?;
    _salePrice = castToType<double>(snapshotData['sale_price']);
    _quantity = castToType<int>(snapshotData['quantity']);
    _email = snapshotData['email'] as String?;
    _plantype = snapshotData['plantype'] as String?;
    _price = castToType<int>(snapshotData['price']);
    _oldprice = snapshotData['oldprice'] as String?;
    _transactionFees = castToType<double>(snapshotData['transactionFees']);
    _totalprice = castToType<double>(snapshotData['Totalprice']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('pro_plan_monthly');

  static Stream<ProPlanMonthlyRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProPlanMonthlyRecord.fromSnapshot(s));

  static Future<ProPlanMonthlyRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProPlanMonthlyRecord.fromSnapshot(s));

  static ProPlanMonthlyRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProPlanMonthlyRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProPlanMonthlyRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProPlanMonthlyRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProPlanMonthlyRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProPlanMonthlyRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProPlanMonthlyRecordData({
  String? name,
  String? description,
  String? specifications,
  DateTime? createdAt,
  DateTime? modifiedAt,
  bool? onSale,
  double? salePrice,
  int? quantity,
  String? email,
  String? plantype,
  int? price,
  String? oldprice,
  double? transactionFees,
  double? totalprice,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'specifications': specifications,
      'created_at': createdAt,
      'modified_at': modifiedAt,
      'on_sale': onSale,
      'sale_price': salePrice,
      'quantity': quantity,
      'email': email,
      'plantype': plantype,
      'price': price,
      'oldprice': oldprice,
      'transactionFees': transactionFees,
      'Totalprice': totalprice,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProPlanMonthlyRecordDocumentEquality
    implements Equality<ProPlanMonthlyRecord> {
  const ProPlanMonthlyRecordDocumentEquality();

  @override
  bool equals(ProPlanMonthlyRecord? e1, ProPlanMonthlyRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.specifications == e2?.specifications &&
        e1?.createdAt == e2?.createdAt &&
        e1?.modifiedAt == e2?.modifiedAt &&
        e1?.onSale == e2?.onSale &&
        e1?.salePrice == e2?.salePrice &&
        e1?.quantity == e2?.quantity &&
        e1?.email == e2?.email &&
        e1?.plantype == e2?.plantype &&
        e1?.price == e2?.price &&
        e1?.oldprice == e2?.oldprice &&
        e1?.transactionFees == e2?.transactionFees &&
        e1?.totalprice == e2?.totalprice;
  }

  @override
  int hash(ProPlanMonthlyRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.specifications,
        e?.createdAt,
        e?.modifiedAt,
        e?.onSale,
        e?.salePrice,
        e?.quantity,
        e?.email,
        e?.plantype,
        e?.price,
        e?.oldprice,
        e?.transactionFees,
        e?.totalprice
      ]);

  @override
  bool isValidKey(Object? o) => o is ProPlanMonthlyRecord;
}
