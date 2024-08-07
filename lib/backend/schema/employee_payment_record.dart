import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EmployeePaymentRecord extends FirestoreRecord {
  EmployeePaymentRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "Lastname" field.
  String? _lastname;
  String get lastname => _lastname ?? '';
  bool hasLastname() => _lastname != null;

  // "Amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  bool hasAmount() => _amount != null;

  // "PaymentDate" field.
  DateTime? _paymentDate;
  DateTime? get paymentDate => _paymentDate;
  bool hasPaymentDate() => _paymentDate != null;

  // "PaymentMethod" field.
  String? _paymentMethod;
  String get paymentMethod => _paymentMethod ?? '';
  bool hasPaymentMethod() => _paymentMethod != null;

  // "Confirmation" field.
  bool? _confirmation;
  bool get confirmation => _confirmation ?? false;
  bool hasConfirmation() => _confirmation != null;

  // "ConfirmationDate" field.
  DateTime? _confirmationDate;
  DateTime? get confirmationDate => _confirmationDate;
  bool hasConfirmationDate() => _confirmationDate != null;

  void _initializeFields() {
    _name = snapshotData['Name'] as String?;
    _lastname = snapshotData['Lastname'] as String?;
    _amount = castToType<double>(snapshotData['Amount']);
    _paymentDate = snapshotData['PaymentDate'] as DateTime?;
    _paymentMethod = snapshotData['PaymentMethod'] as String?;
    _confirmation = snapshotData['Confirmation'] as bool?;
    _confirmationDate = snapshotData['ConfirmationDate'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('EmployeePayment');

  static Stream<EmployeePaymentRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EmployeePaymentRecord.fromSnapshot(s));

  static Future<EmployeePaymentRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EmployeePaymentRecord.fromSnapshot(s));

  static EmployeePaymentRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EmployeePaymentRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EmployeePaymentRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EmployeePaymentRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EmployeePaymentRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EmployeePaymentRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEmployeePaymentRecordData({
  String? name,
  String? lastname,
  double? amount,
  DateTime? paymentDate,
  String? paymentMethod,
  bool? confirmation,
  DateTime? confirmationDate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Name': name,
      'Lastname': lastname,
      'Amount': amount,
      'PaymentDate': paymentDate,
      'PaymentMethod': paymentMethod,
      'Confirmation': confirmation,
      'ConfirmationDate': confirmationDate,
    }.withoutNulls,
  );

  return firestoreData;
}

class EmployeePaymentRecordDocumentEquality
    implements Equality<EmployeePaymentRecord> {
  const EmployeePaymentRecordDocumentEquality();

  @override
  bool equals(EmployeePaymentRecord? e1, EmployeePaymentRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.lastname == e2?.lastname &&
        e1?.amount == e2?.amount &&
        e1?.paymentDate == e2?.paymentDate &&
        e1?.paymentMethod == e2?.paymentMethod &&
        e1?.confirmation == e2?.confirmation &&
        e1?.confirmationDate == e2?.confirmationDate;
  }

  @override
  int hash(EmployeePaymentRecord? e) => const ListEquality().hash([
        e?.name,
        e?.lastname,
        e?.amount,
        e?.paymentDate,
        e?.paymentMethod,
        e?.confirmation,
        e?.confirmationDate
      ]);

  @override
  bool isValidKey(Object? o) => o is EmployeePaymentRecord;
}
