import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InviteUserRecord extends FirestoreRecord {
  InviteUserRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "user_name" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "invited_BY" field.
  DocumentReference? _invitedBY;
  DocumentReference? get invitedBY => _invitedBY;
  bool hasInvitedBY() => _invitedBY != null;

  // "invited_BY-Email" field.
  String? _invitedBYEmail;
  String get invitedBYEmail => _invitedBYEmail ?? '';
  bool hasInvitedBYEmail() => _invitedBYEmail != null;

  // "user_Role" field.
  String? _userRole;
  String get userRole => _userRole ?? '';
  bool hasUserRole() => _userRole != null;

  // "registration_Number" field.
  String? _registrationNumber;
  String get registrationNumber => _registrationNumber ?? '';
  bool hasRegistrationNumber() => _registrationNumber != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "active" field.
  bool? _active;
  bool get active => _active ?? false;
  bool hasActive() => _active != null;

  // "addUser" field.
  bool? _addUser;
  bool get addUser => _addUser ?? false;
  bool hasAddUser() => _addUser != null;

  // "changeRole" field.
  bool? _changeRole;
  bool get changeRole => _changeRole ?? false;
  bool hasChangeRole() => _changeRole != null;

  // "deleteUser" field.
  bool? _deleteUser;
  bool get deleteUser => _deleteUser ?? false;
  bool hasDeleteUser() => _deleteUser != null;

  // "deleteTask" field.
  bool? _deleteTask;
  bool get deleteTask => _deleteTask ?? false;
  bool hasDeleteTask() => _deleteTask != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  bool hasPassword() => _password != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _userName = snapshotData['user_name'] as String?;
    _invitedBY = snapshotData['invited_BY'] as DocumentReference?;
    _invitedBYEmail = snapshotData['invited_BY-Email'] as String?;
    _userRole = snapshotData['user_Role'] as String?;
    _registrationNumber = snapshotData['registration_Number'] as String?;
    _status = snapshotData['status'] as String?;
    _active = snapshotData['active'] as bool?;
    _addUser = snapshotData['addUser'] as bool?;
    _changeRole = snapshotData['changeRole'] as bool?;
    _deleteUser = snapshotData['deleteUser'] as bool?;
    _deleteTask = snapshotData['deleteTask'] as bool?;
    _password = snapshotData['password'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('inviteUser');

  static Stream<InviteUserRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => InviteUserRecord.fromSnapshot(s));

  static Future<InviteUserRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => InviteUserRecord.fromSnapshot(s));

  static InviteUserRecord fromSnapshot(DocumentSnapshot snapshot) =>
      InviteUserRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static InviteUserRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      InviteUserRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'InviteUserRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is InviteUserRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createInviteUserRecordData({
  String? email,
  String? userName,
  DocumentReference? invitedBY,
  String? invitedBYEmail,
  String? userRole,
  String? registrationNumber,
  String? status,
  bool? active,
  bool? addUser,
  bool? changeRole,
  bool? deleteUser,
  bool? deleteTask,
  String? password,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'user_name': userName,
      'invited_BY': invitedBY,
      'invited_BY-Email': invitedBYEmail,
      'user_Role': userRole,
      'registration_Number': registrationNumber,
      'status': status,
      'active': active,
      'addUser': addUser,
      'changeRole': changeRole,
      'deleteUser': deleteUser,
      'deleteTask': deleteTask,
      'password': password,
    }.withoutNulls,
  );

  return firestoreData;
}

class InviteUserRecordDocumentEquality implements Equality<InviteUserRecord> {
  const InviteUserRecordDocumentEquality();

  @override
  bool equals(InviteUserRecord? e1, InviteUserRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.userName == e2?.userName &&
        e1?.invitedBY == e2?.invitedBY &&
        e1?.invitedBYEmail == e2?.invitedBYEmail &&
        e1?.userRole == e2?.userRole &&
        e1?.registrationNumber == e2?.registrationNumber &&
        e1?.status == e2?.status &&
        e1?.active == e2?.active &&
        e1?.addUser == e2?.addUser &&
        e1?.changeRole == e2?.changeRole &&
        e1?.deleteUser == e2?.deleteUser &&
        e1?.deleteTask == e2?.deleteTask &&
        e1?.password == e2?.password;
  }

  @override
  int hash(InviteUserRecord? e) => const ListEquality().hash([
        e?.email,
        e?.userName,
        e?.invitedBY,
        e?.invitedBYEmail,
        e?.userRole,
        e?.registrationNumber,
        e?.status,
        e?.active,
        e?.addUser,
        e?.changeRole,
        e?.deleteUser,
        e?.deleteTask,
        e?.password
      ]);

  @override
  bool isValidKey(Object? o) => o is InviteUserRecord;
}
