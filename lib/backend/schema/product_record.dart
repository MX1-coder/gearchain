import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductRecord extends FirestoreRecord {
  ProductRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "BarCode" field.
  String? _barCode;
  String get barCode => _barCode ?? '';
  bool hasBarCode() => _barCode != null;

  // "TimeStamp" field.
  DateTime? _timeStamp;
  DateTime? get timeStamp => _timeStamp;
  bool hasTimeStamp() => _timeStamp != null;

  // "Quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  // "GpsCo-Ordinates" field.
  String? _gpsCoOrdinates;
  String get gpsCoOrdinates => _gpsCoOrdinates ?? '';
  bool hasGpsCoOrdinates() => _gpsCoOrdinates != null;

  // "StockControl" field.
  String? _stockControl;
  String get stockControl => _stockControl ?? '';
  bool hasStockControl() => _stockControl != null;

  // "Price" field.
  String? _price;
  String get price => _price ?? '';
  bool hasPrice() => _price != null;

  // "Tags" field.
  String? _tags;
  String get tags => _tags ?? '';
  bool hasTags() => _tags != null;

  // "Catogory" field.
  String? _catogory;
  String get catogory => _catogory ?? '';
  bool hasCatogory() => _catogory != null;

  // "Images" field.
  String? _images;
  String get images => _images ?? '';
  bool hasImages() => _images != null;

  // "Paragraph" field.
  String? _paragraph;
  String get paragraph => _paragraph ?? '';
  bool hasParagraph() => _paragraph != null;

  // "RadioButton" field.
  bool? _radioButton;
  bool get radioButton => _radioButton ?? false;
  bool hasRadioButton() => _radioButton != null;

  // "SecondaryBarcode" field.
  String? _secondaryBarcode;
  String get secondaryBarcode => _secondaryBarcode ?? '';
  bool hasSecondaryBarcode() => _secondaryBarcode != null;

  // "Hidden" field.
  String? _hidden;
  String get hidden => _hidden ?? '';
  bool hasHidden() => _hidden != null;

  // "Date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "WebLinks" field.
  String? _webLinks;
  String get webLinks => _webLinks ?? '';
  bool hasWebLinks() => _webLinks != null;

  // "ShortAnswer" field.
  String? _shortAnswer;
  String get shortAnswer => _shortAnswer ?? '';
  bool hasShortAnswer() => _shortAnswer != null;

  // "DateinString" field.
  String? _dateinString;
  String get dateinString => _dateinString ?? '';
  bool hasDateinString() => _dateinString != null;

  // "ListProducts" field.
  List<String>? _listProducts;
  List<String> get listProducts => _listProducts ?? const [];
  bool hasListProducts() => _listProducts != null;

  // "refrence" field.
  DocumentReference? _refrence;
  DocumentReference? get refrence => _refrence;
  bool hasRefrence() => _refrence != null;

  // "owner" field.
  String? _owner;
  String get owner => _owner ?? '';
  bool hasOwner() => _owner != null;

  // "refrencedocs" field.
  DocumentReference? _refrencedocs;
  DocumentReference? get refrencedocs => _refrencedocs;
  bool hasRefrencedocs() => _refrencedocs != null;

  void _initializeFields() {
    _name = snapshotData['Name'] as String?;
    _barCode = snapshotData['BarCode'] as String?;
    _timeStamp = snapshotData['TimeStamp'] as DateTime?;
    _quantity = castToType<int>(snapshotData['Quantity']);
    _gpsCoOrdinates = snapshotData['GpsCo-Ordinates'] as String?;
    _stockControl = snapshotData['StockControl'] as String?;
    _price = snapshotData['Price'] as String?;
    _tags = snapshotData['Tags'] as String?;
    _catogory = snapshotData['Catogory'] as String?;
    _images = snapshotData['Images'] as String?;
    _paragraph = snapshotData['Paragraph'] as String?;
    _radioButton = snapshotData['RadioButton'] as bool?;
    _secondaryBarcode = snapshotData['SecondaryBarcode'] as String?;
    _hidden = snapshotData['Hidden'] as String?;
    _date = snapshotData['Date'] as DateTime?;
    _webLinks = snapshotData['WebLinks'] as String?;
    _shortAnswer = snapshotData['ShortAnswer'] as String?;
    _dateinString = snapshotData['DateinString'] as String?;
    _listProducts = getDataList(snapshotData['ListProducts']);
    _refrence = snapshotData['refrence'] as DocumentReference?;
    _owner = snapshotData['owner'] as String?;
    _refrencedocs = snapshotData['refrencedocs'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Product');

  static Stream<ProductRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductRecord.fromSnapshot(s));

  static Future<ProductRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductRecord.fromSnapshot(s));

  static ProductRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProductRecordData({
  String? name,
  String? barCode,
  DateTime? timeStamp,
  int? quantity,
  String? gpsCoOrdinates,
  String? stockControl,
  String? price,
  String? tags,
  String? catogory,
  String? images,
  String? paragraph,
  bool? radioButton,
  String? secondaryBarcode,
  String? hidden,
  DateTime? date,
  String? webLinks,
  String? shortAnswer,
  String? dateinString,
  DocumentReference? refrence,
  String? owner,
  DocumentReference? refrencedocs,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Name': name,
      'BarCode': barCode,
      'TimeStamp': timeStamp,
      'Quantity': quantity,
      'GpsCo-Ordinates': gpsCoOrdinates,
      'StockControl': stockControl,
      'Price': price,
      'Tags': tags,
      'Catogory': catogory,
      'Images': images,
      'Paragraph': paragraph,
      'RadioButton': radioButton,
      'SecondaryBarcode': secondaryBarcode,
      'Hidden': hidden,
      'Date': date,
      'WebLinks': webLinks,
      'ShortAnswer': shortAnswer,
      'DateinString': dateinString,
      'refrence': refrence,
      'owner': owner,
      'refrencedocs': refrencedocs,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductRecordDocumentEquality implements Equality<ProductRecord> {
  const ProductRecordDocumentEquality();

  @override
  bool equals(ProductRecord? e1, ProductRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.barCode == e2?.barCode &&
        e1?.timeStamp == e2?.timeStamp &&
        e1?.quantity == e2?.quantity &&
        e1?.gpsCoOrdinates == e2?.gpsCoOrdinates &&
        e1?.stockControl == e2?.stockControl &&
        e1?.price == e2?.price &&
        e1?.tags == e2?.tags &&
        e1?.catogory == e2?.catogory &&
        e1?.images == e2?.images &&
        e1?.paragraph == e2?.paragraph &&
        e1?.radioButton == e2?.radioButton &&
        e1?.secondaryBarcode == e2?.secondaryBarcode &&
        e1?.hidden == e2?.hidden &&
        e1?.date == e2?.date &&
        e1?.webLinks == e2?.webLinks &&
        e1?.shortAnswer == e2?.shortAnswer &&
        e1?.dateinString == e2?.dateinString &&
        listEquality.equals(e1?.listProducts, e2?.listProducts) &&
        e1?.refrence == e2?.refrence &&
        e1?.owner == e2?.owner &&
        e1?.refrencedocs == e2?.refrencedocs;
  }

  @override
  int hash(ProductRecord? e) => const ListEquality().hash([
        e?.name,
        e?.barCode,
        e?.timeStamp,
        e?.quantity,
        e?.gpsCoOrdinates,
        e?.stockControl,
        e?.price,
        e?.tags,
        e?.catogory,
        e?.images,
        e?.paragraph,
        e?.radioButton,
        e?.secondaryBarcode,
        e?.hidden,
        e?.date,
        e?.webLinks,
        e?.shortAnswer,
        e?.dateinString,
        e?.listProducts,
        e?.refrence,
        e?.owner,
        e?.refrencedocs
      ]);

  @override
  bool isValidKey(Object? o) => o is ProductRecord;
}
