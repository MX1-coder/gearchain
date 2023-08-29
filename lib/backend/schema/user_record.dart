import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserRecord extends FirestoreRecord {
  UserRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "companyName" field.
  String? _companyName;
  String get companyName => _companyName ?? '';
  bool hasCompanyName() => _companyName != null;

  // "dataData" field.
  DocumentReference? _dataData;
  DocumentReference? get dataData => _dataData;
  bool hasDataData() => _dataData != null;

  // "addStaff" field.
  DocumentReference? _addStaff;
  DocumentReference? get addStaff => _addStaff;
  bool hasAddStaff() => _addStaff != null;

  // "createdBy" field.
  DocumentReference? _createdBy;
  DocumentReference? get createdBy => _createdBy;
  bool hasCreatedBy() => _createdBy != null;

  // "createdByEmail" field.
  String? _createdByEmail;
  String get createdByEmail => _createdByEmail ?? '';
  bool hasCreatedByEmail() => _createdByEmail != null;

  // "userRole" field.
  String? _userRole;
  String get userRole => _userRole ?? '';
  bool hasUserRole() => _userRole != null;

  // "Admin" field.
  String? _admin;
  String get admin => _admin ?? '';
  bool hasAdmin() => _admin != null;

  // "AdminUserId" field.
  String? _adminUserId;
  String get adminUserId => _adminUserId ?? '';
  bool hasAdminUserId() => _adminUserId != null;

  // "adminpermision" field.
  bool? _adminpermision;
  bool get adminpermision => _adminpermision ?? false;
  bool hasAdminpermision() => _adminpermision != null;

  // "formpermitionlist" field.
  List<String>? _formpermitionlist;
  List<String> get formpermitionlist => _formpermitionlist ?? const [];
  bool hasFormpermitionlist() => _formpermitionlist != null;

  // "userpermition" field.
  bool? _userpermition;
  bool get userpermition => _userpermition ?? false;
  bool hasUserpermition() => _userpermition != null;

  // "viewerpermition" field.
  bool? _viewerpermition;
  bool get viewerpermition => _viewerpermition ?? false;
  bool hasViewerpermition() => _viewerpermition != null;

  // "formData" field.
  List<DocumentReference>? _formData;
  List<DocumentReference> get formData => _formData ?? const [];
  bool hasFormData() => _formData != null;

  // "Loginemail" field.
  String? _loginemail;
  String get loginemail => _loginemail ?? '';
  bool hasLoginemail() => _loginemail != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _companyName = snapshotData['companyName'] as String?;
    _dataData = snapshotData['dataData'] as DocumentReference?;
    _addStaff = snapshotData['addStaff'] as DocumentReference?;
    _createdBy = snapshotData['createdBy'] as DocumentReference?;
    _createdByEmail = snapshotData['createdByEmail'] as String?;
    _userRole = snapshotData['userRole'] as String?;
    _admin = snapshotData['Admin'] as String?;
    _adminUserId = snapshotData['AdminUserId'] as String?;
    _adminpermision = snapshotData['adminpermision'] as bool?;
    _formpermitionlist = getDataList(snapshotData['formpermitionlist']);
    _userpermition = snapshotData['userpermition'] as bool?;
    _viewerpermition = snapshotData['viewerpermition'] as bool?;
    _formData = getDataList(snapshotData['formData']);
    _loginemail = snapshotData['Loginemail'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('user');

  static Stream<UserRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserRecord.fromSnapshot(s));

  static Future<UserRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserRecord.fromSnapshot(s));

  static UserRecord fromSnapshot(DocumentSnapshot snapshot) => UserRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? companyName,
  DocumentReference? dataData,
  DocumentReference? addStaff,
  DocumentReference? createdBy,
  String? createdByEmail,
  String? userRole,
  String? admin,
  String? adminUserId,
  bool? adminpermision,
  bool? userpermition,
  bool? viewerpermition,
  String? loginemail,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'companyName': companyName,
      'dataData': dataData,
      'addStaff': addStaff,
      'createdBy': createdBy,
      'createdByEmail': createdByEmail,
      'userRole': userRole,
      'Admin': admin,
      'AdminUserId': adminUserId,
      'adminpermision': adminpermision,
      'userpermition': userpermition,
      'viewerpermition': viewerpermition,
      'Loginemail': loginemail,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserRecordDocumentEquality implements Equality<UserRecord> {
  const UserRecordDocumentEquality();

  @override
  bool equals(UserRecord? e1, UserRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.companyName == e2?.companyName &&
        e1?.dataData == e2?.dataData &&
        e1?.addStaff == e2?.addStaff &&
        e1?.createdBy == e2?.createdBy &&
        e1?.createdByEmail == e2?.createdByEmail &&
        e1?.userRole == e2?.userRole &&
        e1?.admin == e2?.admin &&
        e1?.adminUserId == e2?.adminUserId &&
        e1?.adminpermision == e2?.adminpermision &&
        listEquality.equals(e1?.formpermitionlist, e2?.formpermitionlist) &&
        e1?.userpermition == e2?.userpermition &&
        e1?.viewerpermition == e2?.viewerpermition &&
        listEquality.equals(e1?.formData, e2?.formData) &&
        e1?.loginemail == e2?.loginemail;
  }

  @override
  int hash(UserRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.companyName,
        e?.dataData,
        e?.addStaff,
        e?.createdBy,
        e?.createdByEmail,
        e?.userRole,
        e?.admin,
        e?.adminUserId,
        e?.adminpermision,
        e?.formpermitionlist,
        e?.userpermition,
        e?.viewerpermition,
        e?.formData,
        e?.loginemail
      ]);

  @override
  bool isValidKey(Object? o) => o is UserRecord;
}
