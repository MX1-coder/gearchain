import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AddStaffRecord extends FirestoreRecord {
  AddStaffRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "firstName" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  bool hasFirstName() => _firstName != null;

  // "emailStaff" field.
  String? _emailStaff;
  String get emailStaff => _emailStaff ?? '';
  bool hasEmailStaff() => _emailStaff != null;

  // "isPending" field.
  bool? _isPending;
  bool get isPending => _isPending ?? false;
  bool hasIsPending() => _isPending != null;

  // "admin" field.
  bool? _admin;
  bool get admin => _admin ?? false;
  bool hasAdmin() => _admin != null;

  // "report" field.
  bool? _report;
  bool get report => _report ?? false;
  bool hasReport() => _report != null;

  // "manualEntry" field.
  bool? _manualEntry;
  bool get manualEntry => _manualEntry ?? false;
  bool hasManualEntry() => _manualEntry != null;

  // "barcodeScanOnly" field.
  bool? _barcodeScanOnly;
  bool get barcodeScanOnly => _barcodeScanOnly ?? false;
  bool hasBarcodeScanOnly() => _barcodeScanOnly != null;

  // "barcodeSubmit" field.
  bool? _barcodeSubmit;
  bool get barcodeSubmit => _barcodeSubmit ?? false;
  bool hasBarcodeSubmit() => _barcodeSubmit != null;

  // "billing" field.
  bool? _billing;
  bool get billing => _billing ?? false;
  bool hasBilling() => _billing != null;

  // "formEditOnly" field.
  bool? _formEditOnly;
  bool get formEditOnly => _formEditOnly ?? false;
  bool hasFormEditOnly() => _formEditOnly != null;

  // "userRoleRefrence" field.
  EmailStruct? _userRoleRefrence;
  EmailStruct get userRoleRefrence => _userRoleRefrence ?? EmailStruct();
  bool hasUserRoleRefrence() => _userRoleRefrence != null;

  // "staffUser" field.
  bool? _staffUser;
  bool get staffUser => _staffUser ?? false;
  bool hasStaffUser() => _staffUser != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  bool hasPassword() => _password != null;

  void _initializeFields() {
    _firstName = snapshotData['firstName'] as String?;
    _emailStaff = snapshotData['emailStaff'] as String?;
    _isPending = snapshotData['isPending'] as bool?;
    _admin = snapshotData['admin'] as bool?;
    _report = snapshotData['report'] as bool?;
    _manualEntry = snapshotData['manualEntry'] as bool?;
    _barcodeScanOnly = snapshotData['barcodeScanOnly'] as bool?;
    _barcodeSubmit = snapshotData['barcodeSubmit'] as bool?;
    _billing = snapshotData['billing'] as bool?;
    _formEditOnly = snapshotData['formEditOnly'] as bool?;
    _userRoleRefrence =
        EmailStruct.maybeFromMap(snapshotData['userRoleRefrence']);
    _staffUser = snapshotData['staffUser'] as bool?;
    _password = snapshotData['password'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('add_Staff');

  static Stream<AddStaffRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AddStaffRecord.fromSnapshot(s));

  static Future<AddStaffRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AddStaffRecord.fromSnapshot(s));

  static AddStaffRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AddStaffRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AddStaffRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AddStaffRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AddStaffRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AddStaffRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAddStaffRecordData({
  String? firstName,
  String? emailStaff,
  bool? isPending,
  bool? admin,
  bool? report,
  bool? manualEntry,
  bool? barcodeScanOnly,
  bool? barcodeSubmit,
  bool? billing,
  bool? formEditOnly,
  EmailStruct? userRoleRefrence,
  bool? staffUser,
  String? password,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'firstName': firstName,
      'emailStaff': emailStaff,
      'isPending': isPending,
      'admin': admin,
      'report': report,
      'manualEntry': manualEntry,
      'barcodeScanOnly': barcodeScanOnly,
      'barcodeSubmit': barcodeSubmit,
      'billing': billing,
      'formEditOnly': formEditOnly,
      'userRoleRefrence': EmailStruct().toMap(),
      'staffUser': staffUser,
      'password': password,
    }.withoutNulls,
  );

  // Handle nested data for "userRoleRefrence" field.
  addEmailStructData(firestoreData, userRoleRefrence, 'userRoleRefrence');

  return firestoreData;
}

class AddStaffRecordDocumentEquality implements Equality<AddStaffRecord> {
  const AddStaffRecordDocumentEquality();

  @override
  bool equals(AddStaffRecord? e1, AddStaffRecord? e2) {
    return e1?.firstName == e2?.firstName &&
        e1?.emailStaff == e2?.emailStaff &&
        e1?.isPending == e2?.isPending &&
        e1?.admin == e2?.admin &&
        e1?.report == e2?.report &&
        e1?.manualEntry == e2?.manualEntry &&
        e1?.barcodeScanOnly == e2?.barcodeScanOnly &&
        e1?.barcodeSubmit == e2?.barcodeSubmit &&
        e1?.billing == e2?.billing &&
        e1?.formEditOnly == e2?.formEditOnly &&
        e1?.userRoleRefrence == e2?.userRoleRefrence &&
        e1?.staffUser == e2?.staffUser &&
        e1?.password == e2?.password;
  }

  @override
  int hash(AddStaffRecord? e) => const ListEquality().hash([
        e?.firstName,
        e?.emailStaff,
        e?.isPending,
        e?.admin,
        e?.report,
        e?.manualEntry,
        e?.barcodeScanOnly,
        e?.barcodeSubmit,
        e?.billing,
        e?.formEditOnly,
        e?.userRoleRefrence,
        e?.staffUser,
        e?.password
      ]);

  @override
  bool isValidKey(Object? o) => o is AddStaffRecord;
}
