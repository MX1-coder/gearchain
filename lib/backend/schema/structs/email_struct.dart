// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EmailStruct extends FFFirebaseStruct {
  EmailStruct({
    String? email,
    String? role,
    List<int>? scannerscount,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _email = email,
        _role = role,
        _scannerscount = scannerscount,
        super(firestoreUtilData);

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;
  bool hasEmail() => _email != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  set role(String? val) => _role = val;
  bool hasRole() => _role != null;

  // "scannerscount" field.
  List<int>? _scannerscount;
  List<int> get scannerscount => _scannerscount ?? const [];
  set scannerscount(List<int>? val) => _scannerscount = val;
  void updateScannerscount(Function(List<int>) updateFn) =>
      updateFn(_scannerscount ??= []);
  bool hasScannerscount() => _scannerscount != null;

  static EmailStruct fromMap(Map<String, dynamic> data) => EmailStruct(
        email: data['email'] as String?,
        role: data['role'] as String?,
        scannerscount: getDataList(data['scannerscount']),
      );

  static EmailStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? EmailStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'email': _email,
        'role': _role,
        'scannerscount': _scannerscount,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'role': serializeParam(
          _role,
          ParamType.String,
        ),
        'scannerscount': serializeParam(
          _scannerscount,
          ParamType.int,
          true,
        ),
      }.withoutNulls;

  static EmailStruct fromSerializableMap(Map<String, dynamic> data) =>
      EmailStruct(
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        role: deserializeParam(
          data['role'],
          ParamType.String,
          false,
        ),
        scannerscount: deserializeParam<int>(
          data['scannerscount'],
          ParamType.int,
          true,
        ),
      );

  @override
  String toString() => 'EmailStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is EmailStruct &&
        email == other.email &&
        role == other.role &&
        listEquality.equals(scannerscount, other.scannerscount);
  }

  @override
  int get hashCode => const ListEquality().hash([email, role, scannerscount]);
}

EmailStruct createEmailStruct({
  String? email,
  String? role,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    EmailStruct(
      email: email,
      role: role,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

EmailStruct? updateEmailStruct(
  EmailStruct? emailStruct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    emailStruct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addEmailStructData(
  Map<String, dynamic> firestoreData,
  EmailStruct? emailStruct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (emailStruct == null) {
    return;
  }
  if (emailStruct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && emailStruct.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final emailStructData = getEmailFirestoreData(emailStruct, forFieldValue);
  final nestedData =
      emailStructData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = emailStruct.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getEmailFirestoreData(
  EmailStruct? emailStruct, [
  bool forFieldValue = false,
]) {
  if (emailStruct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(emailStruct.toMap());

  // Add any Firestore field values
  emailStruct.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getEmailListFirestoreData(
  List<EmailStruct>? emailStructs,
) =>
    emailStructs?.map((e) => getEmailFirestoreData(e, true)).toList() ?? [];
