import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PaymentMethodRecord extends FirestoreRecord {
  PaymentMethodRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "MethodDescription" field.
  String? _methodDescription;
  String get methodDescription => _methodDescription ?? '';
  bool hasMethodDescription() => _methodDescription != null;

  // "MethodCardNumber" field.
  String? _methodCardNumber;
  String get methodCardNumber => _methodCardNumber ?? '';
  bool hasMethodCardNumber() => _methodCardNumber != null;

  // "MethodCardExpirationDate" field.
  String? _methodCardExpirationDate;
  String get methodCardExpirationDate => _methodCardExpirationDate ?? '';
  bool hasMethodCardExpirationDate() => _methodCardExpirationDate != null;

  // "MethodSecurityCode" field.
  String? _methodSecurityCode;
  String get methodSecurityCode => _methodSecurityCode ?? '';
  bool hasMethodSecurityCode() => _methodSecurityCode != null;

  // "MethodCardHolderName" field.
  String? _methodCardHolderName;
  String get methodCardHolderName => _methodCardHolderName ?? '';
  bool hasMethodCardHolderName() => _methodCardHolderName != null;

  // "MethodPostalCode" field.
  String? _methodPostalCode;
  String get methodPostalCode => _methodPostalCode ?? '';
  bool hasMethodPostalCode() => _methodPostalCode != null;

  // "MethodBuyer" field.
  DocumentReference? _methodBuyer;
  DocumentReference? get methodBuyer => _methodBuyer;
  bool hasMethodBuyer() => _methodBuyer != null;

  void _initializeFields() {
    _methodDescription = snapshotData['MethodDescription'] as String?;
    _methodCardNumber = snapshotData['MethodCardNumber'] as String?;
    _methodCardExpirationDate =
        snapshotData['MethodCardExpirationDate'] as String?;
    _methodSecurityCode = snapshotData['MethodSecurityCode'] as String?;
    _methodCardHolderName = snapshotData['MethodCardHolderName'] as String?;
    _methodPostalCode = snapshotData['MethodPostalCode'] as String?;
    _methodBuyer = snapshotData['MethodBuyer'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('PaymentMethod');

  static Stream<PaymentMethodRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PaymentMethodRecord.fromSnapshot(s));

  static Future<PaymentMethodRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PaymentMethodRecord.fromSnapshot(s));

  static PaymentMethodRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PaymentMethodRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PaymentMethodRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PaymentMethodRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PaymentMethodRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PaymentMethodRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPaymentMethodRecordData({
  String? methodDescription,
  String? methodCardNumber,
  String? methodCardExpirationDate,
  String? methodSecurityCode,
  String? methodCardHolderName,
  String? methodPostalCode,
  DocumentReference? methodBuyer,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'MethodDescription': methodDescription,
      'MethodCardNumber': methodCardNumber,
      'MethodCardExpirationDate': methodCardExpirationDate,
      'MethodSecurityCode': methodSecurityCode,
      'MethodCardHolderName': methodCardHolderName,
      'MethodPostalCode': methodPostalCode,
      'MethodBuyer': methodBuyer,
    }.withoutNulls,
  );

  return firestoreData;
}

class PaymentMethodRecordDocumentEquality
    implements Equality<PaymentMethodRecord> {
  const PaymentMethodRecordDocumentEquality();

  @override
  bool equals(PaymentMethodRecord? e1, PaymentMethodRecord? e2) {
    return e1?.methodDescription == e2?.methodDescription &&
        e1?.methodCardNumber == e2?.methodCardNumber &&
        e1?.methodCardExpirationDate == e2?.methodCardExpirationDate &&
        e1?.methodSecurityCode == e2?.methodSecurityCode &&
        e1?.methodCardHolderName == e2?.methodCardHolderName &&
        e1?.methodPostalCode == e2?.methodPostalCode &&
        e1?.methodBuyer == e2?.methodBuyer;
  }

  @override
  int hash(PaymentMethodRecord? e) => const ListEquality().hash([
        e?.methodDescription,
        e?.methodCardNumber,
        e?.methodCardExpirationDate,
        e?.methodSecurityCode,
        e?.methodCardHolderName,
        e?.methodPostalCode,
        e?.methodBuyer
      ]);

  @override
  bool isValidKey(Object? o) => o is PaymentMethodRecord;
}
