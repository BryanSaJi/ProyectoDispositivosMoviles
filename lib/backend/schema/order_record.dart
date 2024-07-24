import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrderRecord extends FirestoreRecord {
  OrderRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Products" field.
  List<int>? _products;
  List<int> get products => _products ?? const [];
  bool hasProducts() => _products != null;

  // "OrderDate" field.
  DateTime? _orderDate;
  DateTime? get orderDate => _orderDate;
  bool hasOrderDate() => _orderDate != null;

  // "OrderHour" field.
  DateTime? _orderHour;
  DateTime? get orderHour => _orderHour;
  bool hasOrderHour() => _orderHour != null;

  // "PaymentMethode" field.
  int? _paymentMethode;
  int get paymentMethode => _paymentMethode ?? 0;
  bool hasPaymentMethode() => _paymentMethode != null;

  // "Enable" field.
  bool? _enable;
  bool get enable => _enable ?? false;
  bool hasEnable() => _enable != null;

  // "OrderUser" field.
  DocumentReference? _orderUser;
  DocumentReference? get orderUser => _orderUser;
  bool hasOrderUser() => _orderUser != null;

  // "OrderTotal" field.
  int? _orderTotal;
  int get orderTotal => _orderTotal ?? 0;
  bool hasOrderTotal() => _orderTotal != null;

  // "OrderCode" field.
  String? _orderCode;
  String get orderCode => _orderCode ?? '';
  bool hasOrderCode() => _orderCode != null;

  void _initializeFields() {
    _products = getDataList(snapshotData['Products']);
    _orderDate = snapshotData['OrderDate'] as DateTime?;
    _orderHour = snapshotData['OrderHour'] as DateTime?;
    _paymentMethode = castToType<int>(snapshotData['PaymentMethode']);
    _enable = snapshotData['Enable'] as bool?;
    _orderUser = snapshotData['OrderUser'] as DocumentReference?;
    _orderTotal = castToType<int>(snapshotData['OrderTotal']);
    _orderCode = snapshotData['OrderCode'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Order');

  static Stream<OrderRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrderRecord.fromSnapshot(s));

  static Future<OrderRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrderRecord.fromSnapshot(s));

  static OrderRecord fromSnapshot(DocumentSnapshot snapshot) => OrderRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrderRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrderRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrderRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrderRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrderRecordData({
  DateTime? orderDate,
  DateTime? orderHour,
  int? paymentMethode,
  bool? enable,
  DocumentReference? orderUser,
  int? orderTotal,
  String? orderCode,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'OrderDate': orderDate,
      'OrderHour': orderHour,
      'PaymentMethode': paymentMethode,
      'Enable': enable,
      'OrderUser': orderUser,
      'OrderTotal': orderTotal,
      'OrderCode': orderCode,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrderRecordDocumentEquality implements Equality<OrderRecord> {
  const OrderRecordDocumentEquality();

  @override
  bool equals(OrderRecord? e1, OrderRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.products, e2?.products) &&
        e1?.orderDate == e2?.orderDate &&
        e1?.orderHour == e2?.orderHour &&
        e1?.paymentMethode == e2?.paymentMethode &&
        e1?.enable == e2?.enable &&
        e1?.orderUser == e2?.orderUser &&
        e1?.orderTotal == e2?.orderTotal &&
        e1?.orderCode == e2?.orderCode;
  }

  @override
  int hash(OrderRecord? e) => const ListEquality().hash([
        e?.products,
        e?.orderDate,
        e?.orderHour,
        e?.paymentMethode,
        e?.enable,
        e?.orderUser,
        e?.orderTotal,
        e?.orderCode
      ]);

  @override
  bool isValidKey(Object? o) => o is OrderRecord;
}
