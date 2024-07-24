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

  void _initializeFields() {
    _idOrder = castToType<int>(snapshotData['IdOrder']);
    _methodeDescription = snapshotData['MethodeDescription'] as String?;
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
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'IdOrder': idOrder,
      'MethodeDescription': methodeDescription,
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
        e1?.methodeDescription == e2?.methodeDescription;
  }

  @override
  int hash(PaymentMethodeRecord? e) =>
      const ListEquality().hash([e?.idOrder, e?.methodeDescription]);

  @override
  bool isValidKey(Object? o) => o is PaymentMethodeRecord;
}
