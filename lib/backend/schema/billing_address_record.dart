import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BillingAddressRecord extends FirestoreRecord {
  BillingAddressRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "CountryRegion" field.
  String? _countryRegion;
  String get countryRegion => _countryRegion ?? '';
  bool hasCountryRegion() => _countryRegion != null;

  // "firstName" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  bool hasFirstName() => _firstName != null;

  // "lastName" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  bool hasLastName() => _lastName != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "apartment" field.
  String? _apartment;
  String get apartment => _apartment ?? '';
  bool hasApartment() => _apartment != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  bool hasState() => _state != null;

  // "zipCode" field.
  String? _zipCode;
  String get zipCode => _zipCode ?? '';
  bool hasZipCode() => _zipCode != null;

  // "cardNumber" field.
  String? _cardNumber;
  String get cardNumber => _cardNumber ?? '';
  bool hasCardNumber() => _cardNumber != null;

  // "dateTillValid" field.
  String? _dateTillValid;
  String get dateTillValid => _dateTillValid ?? '';
  bool hasDateTillValid() => _dateTillValid != null;

  // "cvv" field.
  int? _cvv;
  int get cvv => _cvv ?? 0;
  bool hasCvv() => _cvv != null;

  void _initializeFields() {
    _countryRegion = snapshotData['CountryRegion'] as String?;
    _firstName = snapshotData['firstName'] as String?;
    _lastName = snapshotData['lastName'] as String?;
    _address = snapshotData['address'] as String?;
    _apartment = snapshotData['apartment'] as String?;
    _city = snapshotData['city'] as String?;
    _state = snapshotData['state'] as String?;
    _zipCode = snapshotData['zipCode'] as String?;
    _cardNumber = snapshotData['cardNumber'] as String?;
    _dateTillValid = snapshotData['dateTillValid'] as String?;
    _cvv = castToType<int>(snapshotData['cvv']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('billingAddress');

  static Stream<BillingAddressRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BillingAddressRecord.fromSnapshot(s));

  static Future<BillingAddressRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BillingAddressRecord.fromSnapshot(s));

  static BillingAddressRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BillingAddressRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BillingAddressRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BillingAddressRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BillingAddressRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BillingAddressRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBillingAddressRecordData({
  String? countryRegion,
  String? firstName,
  String? lastName,
  String? address,
  String? apartment,
  String? city,
  String? state,
  String? zipCode,
  String? cardNumber,
  String? dateTillValid,
  int? cvv,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'CountryRegion': countryRegion,
      'firstName': firstName,
      'lastName': lastName,
      'address': address,
      'apartment': apartment,
      'city': city,
      'state': state,
      'zipCode': zipCode,
      'cardNumber': cardNumber,
      'dateTillValid': dateTillValid,
      'cvv': cvv,
    }.withoutNulls,
  );

  return firestoreData;
}

class BillingAddressRecordDocumentEquality
    implements Equality<BillingAddressRecord> {
  const BillingAddressRecordDocumentEquality();

  @override
  bool equals(BillingAddressRecord? e1, BillingAddressRecord? e2) {
    return e1?.countryRegion == e2?.countryRegion &&
        e1?.firstName == e2?.firstName &&
        e1?.lastName == e2?.lastName &&
        e1?.address == e2?.address &&
        e1?.apartment == e2?.apartment &&
        e1?.city == e2?.city &&
        e1?.state == e2?.state &&
        e1?.zipCode == e2?.zipCode &&
        e1?.cardNumber == e2?.cardNumber &&
        e1?.dateTillValid == e2?.dateTillValid &&
        e1?.cvv == e2?.cvv;
  }

  @override
  int hash(BillingAddressRecord? e) => const ListEquality().hash([
        e?.countryRegion,
        e?.firstName,
        e?.lastName,
        e?.address,
        e?.apartment,
        e?.city,
        e?.state,
        e?.zipCode,
        e?.cardNumber,
        e?.dateTillValid,
        e?.cvv
      ]);

  @override
  bool isValidKey(Object? o) => o is BillingAddressRecord;
}
