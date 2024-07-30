import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PaymentMethodeRecord extends FirestoreRecord {
  PaymentMethodeRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "IdOrder" field.
  int? _idOrder;
  int get idOrder => _idOrder ?? 0;
  bool hasIdOrder() => _idOrder != null;

  // "MethodeDescription" field.
  String? _methodeDescription;
  String get methodeDescription => _methodeDescription ?? '';
  bool hasMethodeDescription() => _methodeDescription != null;

  // "CardNumber" field.
  String? _cardNumber;
  String get cardNumber => _cardNumber ?? '';
  bool hasCardNumber() => _cardNumber != null;

  // "CardExpDate" field.
  DateTime? _cardExpDate;
  DateTime? get cardExpDate => _cardExpDate;
  bool hasCardExpDate() => _cardExpDate != null;

  // "CardCVV" field.
  String? _cardCVV;
  String get cardCVV => _cardCVV ?? '';
  bool hasCardCVV() => _cardCVV != null;

  void _initializeFields() {
    _idOrder = castToType<int>(snapshotData['IdOrder']);
    _methodeDescription = snapshotData['MethodeDescription'] as String?;
    _cardNumber = snapshotData['CardNumber'] as String?;
    _cardExpDate = snapshotData['CardExpDate'] as DateTime?;
    _cardCVV = snapshotData['CardCVV'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('PaymentMethode');

  static Stream<PaymentMethodeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PaymentMethodeRecord.fromSnapshot(s));

  static Future<PaymentMethodeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PaymentMethodeRecord.fromSnapshot(s));

  static PaymentMethodeRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PaymentMethodeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PaymentMethodeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PaymentMethodeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PaymentMethodeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PaymentMethodeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPaymentMethodeRecordData({
  int? idOrder,
  String? methodeDescription,
  String? cardNumber,
  DateTime? cardExpDate,
  String? cardCVV,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'IdOrder': idOrder,
      'MethodeDescription': methodeDescription,
      'CardNumber': cardNumber,
      'CardExpDate': cardExpDate,
      'CardCVV': cardCVV,
    }.withoutNulls,
  );

  return firestoreData;
}

class PaymentMethodeRecordDocumentEquality
    implements Equality<PaymentMethodeRecord> {
  const PaymentMethodeRecordDocumentEquality();

  @override
  bool equals(PaymentMethodeRecord? e1, PaymentMethodeRecord? e2) {
    return e1?.idOrder == e2?.idOrder &&
        e1?.methodeDescription == e2?.methodeDescription &&
        e1?.cardNumber == e2?.cardNumber &&
        e1?.cardExpDate == e2?.cardExpDate &&
        e1?.cardCVV == e2?.cardCVV;
  }

  @override
  int hash(PaymentMethodeRecord? e) => const ListEquality().hash([
        e?.idOrder,
        e?.methodeDescription,
        e?.cardNumber,
        e?.cardExpDate,
        e?.cardCVV
      ]);

  @override
  bool isValidKey(Object? o) => o is PaymentMethodeRecord;
}
