import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FormsDataRecord extends FirestoreRecord {
  FormsDataRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Barcode" field.
  bool? _barcode;
  bool get barcode => _barcode ?? false;
  bool hasBarcode() => _barcode != null;

  // "TimeStamp" field.
  bool? _timeStamp;
  bool get timeStamp => _timeStamp ?? false;
  bool hasTimeStamp() => _timeStamp != null;

  // "Date" field.
  bool? _date;
  bool get date => _date ?? false;
  bool hasDate() => _date != null;

  // "ShortAnswer" field.
  bool? _shortAnswer;
  bool get shortAnswer => _shortAnswer ?? false;
  bool hasShortAnswer() => _shortAnswer != null;

  // "Paragraph" field.
  bool? _paragraph;
  bool get paragraph => _paragraph ?? false;
  bool hasParagraph() => _paragraph != null;

  // "DropDown" field.
  bool? _dropDown;
  bool get dropDown => _dropDown ?? false;
  bool hasDropDown() => _dropDown != null;

  // "CheckBoxes" field.
  bool? _checkBoxes;
  bool get checkBoxes => _checkBoxes ?? false;
  bool hasCheckBoxes() => _checkBoxes != null;

  // "Numbercount" field.
  bool? _numbercount;
  bool get numbercount => _numbercount ?? false;
  bool hasNumbercount() => _numbercount != null;

  // "RadioButton" field.
  bool? _radioButton;
  bool get radioButton => _radioButton ?? false;
  bool hasRadioButton() => _radioButton != null;

  // "GpsCordinates" field.
  bool? _gpsCordinates;
  bool get gpsCordinates => _gpsCordinates ?? false;
  bool hasGpsCordinates() => _gpsCordinates != null;

  // "SecondaryBarcode" field.
  bool? _secondaryBarcode;
  bool get secondaryBarcode => _secondaryBarcode ?? false;
  bool hasSecondaryBarcode() => _secondaryBarcode != null;

  // "Hidden" field.
  bool? _hidden;
  bool get hidden => _hidden ?? false;
  bool hasHidden() => _hidden != null;

  // "Images" field.
  bool? _images;
  bool get images => _images ?? false;
  bool hasImages() => _images != null;

  // "Tags" field.
  bool? _tags;
  bool get tags => _tags ?? false;
  bool hasTags() => _tags != null;

  // "Price" field.
  bool? _price;
  bool get price => _price ?? false;
  bool hasPrice() => _price != null;

  // "WebLinks" field.
  bool? _webLinks;
  bool get webLinks => _webLinks ?? false;
  bool hasWebLinks() => _webLinks != null;

  // "formName" field.
  String? _formName;
  String get formName => _formName ?? '';
  bool hasFormName() => _formName != null;

  // "Stocks" field.
  bool? _stocks;
  bool get stocks => _stocks ?? false;
  bool hasStocks() => _stocks != null;

  // "Name" field.
  bool? _name;
  bool get name => _name ?? false;
  bool hasName() => _name != null;

  // "FormTitle" field.
  List<String>? _formTitle;
  List<String> get formTitle => _formTitle ?? const [];
  bool hasFormTitle() => _formTitle != null;

  // "formsData" field.
  DocumentReference? _formsData;
  DocumentReference? get formsData => _formsData;
  bool hasFormsData() => _formsData != null;

  // "createTime" field.
  DateTime? _createTime;
  DateTime? get createTime => _createTime;
  bool hasCreateTime() => _createTime != null;

  // "createdby" field.
  String? _createdby;
  String get createdby => _createdby ?? '';
  bool hasCreatedby() => _createdby != null;

  // "Admin" field.
  String? _admin;
  String get admin => _admin ?? '';
  bool hasAdmin() => _admin != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "owner" field.
  String? _owner;
  String get owner => _owner ?? '';
  bool hasOwner() => _owner != null;

  // "updateScanerCount" field.
  int? _updateScanerCount;
  int get updateScanerCount => _updateScanerCount ?? 0;
  bool hasUpdateScanerCount() => _updateScanerCount != null;

  void _initializeFields() {
    _barcode = snapshotData['Barcode'] as bool?;
    _timeStamp = snapshotData['TimeStamp'] as bool?;
    _date = snapshotData['Date'] as bool?;
    _shortAnswer = snapshotData['ShortAnswer'] as bool?;
    _paragraph = snapshotData['Paragraph'] as bool?;
    _dropDown = snapshotData['DropDown'] as bool?;
    _checkBoxes = snapshotData['CheckBoxes'] as bool?;
    _numbercount = snapshotData['Numbercount'] as bool?;
    _radioButton = snapshotData['RadioButton'] as bool?;
    _gpsCordinates = snapshotData['GpsCordinates'] as bool?;
    _secondaryBarcode = snapshotData['SecondaryBarcode'] as bool?;
    _hidden = snapshotData['Hidden'] as bool?;
    _images = snapshotData['Images'] as bool?;
    _tags = snapshotData['Tags'] as bool?;
    _price = snapshotData['Price'] as bool?;
    _webLinks = snapshotData['WebLinks'] as bool?;
    _formName = snapshotData['formName'] as String?;
    _stocks = snapshotData['Stocks'] as bool?;
    _name = snapshotData['Name'] as bool?;
    _formTitle = getDataList(snapshotData['FormTitle']);
    _formsData = snapshotData['formsData'] as DocumentReference?;
    _createTime = snapshotData['createTime'] as DateTime?;
    _createdby = snapshotData['createdby'] as String?;
    _admin = snapshotData['Admin'] as String?;
    _user = snapshotData['user'] as DocumentReference?;
    _owner = snapshotData['owner'] as String?;
    _updateScanerCount = castToType<int>(snapshotData['updateScanerCount']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('formsData');

  static Stream<FormsDataRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FormsDataRecord.fromSnapshot(s));

  static Future<FormsDataRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FormsDataRecord.fromSnapshot(s));

  static FormsDataRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FormsDataRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FormsDataRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FormsDataRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FormsDataRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FormsDataRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFormsDataRecordData({
  bool? barcode,
  bool? timeStamp,
  bool? date,
  bool? shortAnswer,
  bool? paragraph,
  bool? dropDown,
  bool? checkBoxes,
  bool? numbercount,
  bool? radioButton,
  bool? gpsCordinates,
  bool? secondaryBarcode,
  bool? hidden,
  bool? images,
  bool? tags,
  bool? price,
  bool? webLinks,
  String? formName,
  bool? stocks,
  bool? name,
  DocumentReference? formsData,
  DateTime? createTime,
  String? createdby,
  String? admin,
  DocumentReference? user,
  String? owner,
  int? updateScanerCount,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Barcode': barcode,
      'TimeStamp': timeStamp,
      'Date': date,
      'ShortAnswer': shortAnswer,
      'Paragraph': paragraph,
      'DropDown': dropDown,
      'CheckBoxes': checkBoxes,
      'Numbercount': numbercount,
      'RadioButton': radioButton,
      'GpsCordinates': gpsCordinates,
      'SecondaryBarcode': secondaryBarcode,
      'Hidden': hidden,
      'Images': images,
      'Tags': tags,
      'Price': price,
      'WebLinks': webLinks,
      'formName': formName,
      'Stocks': stocks,
      'Name': name,
      'formsData': formsData,
      'createTime': createTime,
      'createdby': createdby,
      'Admin': admin,
      'user': user,
      'owner': owner,
      'updateScanerCount': updateScanerCount,
    }.withoutNulls,
  );

  return firestoreData;
}

class FormsDataRecordDocumentEquality implements Equality<FormsDataRecord> {
  const FormsDataRecordDocumentEquality();

  @override
  bool equals(FormsDataRecord? e1, FormsDataRecord? e2) {
    const listEquality = ListEquality();
    return e1?.barcode == e2?.barcode &&
        e1?.timeStamp == e2?.timeStamp &&
        e1?.date == e2?.date &&
        e1?.shortAnswer == e2?.shortAnswer &&
        e1?.paragraph == e2?.paragraph &&
        e1?.dropDown == e2?.dropDown &&
        e1?.checkBoxes == e2?.checkBoxes &&
        e1?.numbercount == e2?.numbercount &&
        e1?.radioButton == e2?.radioButton &&
        e1?.gpsCordinates == e2?.gpsCordinates &&
        e1?.secondaryBarcode == e2?.secondaryBarcode &&
        e1?.hidden == e2?.hidden &&
        e1?.images == e2?.images &&
        e1?.tags == e2?.tags &&
        e1?.price == e2?.price &&
        e1?.webLinks == e2?.webLinks &&
        e1?.formName == e2?.formName &&
        e1?.stocks == e2?.stocks &&
        e1?.name == e2?.name &&
        listEquality.equals(e1?.formTitle, e2?.formTitle) &&
        e1?.formsData == e2?.formsData &&
        e1?.createTime == e2?.createTime &&
        e1?.createdby == e2?.createdby &&
        e1?.admin == e2?.admin &&
        e1?.user == e2?.user &&
        e1?.owner == e2?.owner &&
        e1?.updateScanerCount == e2?.updateScanerCount;
  }

  @override
  int hash(FormsDataRecord? e) => const ListEquality().hash([
        e?.barcode,
        e?.timeStamp,
        e?.date,
        e?.shortAnswer,
        e?.paragraph,
        e?.dropDown,
        e?.checkBoxes,
        e?.numbercount,
        e?.radioButton,
        e?.gpsCordinates,
        e?.secondaryBarcode,
        e?.hidden,
        e?.images,
        e?.tags,
        e?.price,
        e?.webLinks,
        e?.formName,
        e?.stocks,
        e?.name,
        e?.formTitle,
        e?.formsData,
        e?.createTime,
        e?.createdby,
        e?.admin,
        e?.user,
        e?.owner,
        e?.updateScanerCount
      ]);

  @override
  bool isValidKey(Object? o) => o is FormsDataRecord;
}
