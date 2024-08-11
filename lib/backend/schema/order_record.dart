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

  // "OrderDate" field.
  DateTime? _orderDate;
  DateTime? get orderDate => _orderDate;
  bool hasOrderDate() => _orderDate != null;

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

  // "OrderStatus" field.
  String? _orderStatus;
  String get orderStatus => _orderStatus ?? '';
  bool hasOrderStatus() => _orderStatus != null;

  // "Product" field.
  List<DocumentReference>? _product;
  List<DocumentReference> get product => _product ?? const [];
  bool hasProduct() => _product != null;

  // "OrderPaymentMethod" field.
  DocumentReference? _orderPaymentMethod;
  DocumentReference? get orderPaymentMethod => _orderPaymentMethod;
  bool hasOrderPaymentMethod() => _orderPaymentMethod != null;

  void _initializeFields() {
    _orderDate = snapshotData['OrderDate'] as DateTime?;
    _enable = snapshotData['Enable'] as bool?;
    _orderUser = snapshotData['OrderUser'] as DocumentReference?;
    _orderTotal = castToType<int>(snapshotData['OrderTotal']);
    _orderCode = snapshotData['OrderCode'] as String?;
    _orderStatus = snapshotData['OrderStatus'] as String?;
    _product = getDataList(snapshotData['Product']);
    _orderPaymentMethod =
        snapshotData['OrderPaymentMethod'] as DocumentReference?;
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
  bool? enable,
  DocumentReference? orderUser,
  int? orderTotal,
  String? orderCode,
  String? orderStatus,
  DocumentReference? orderPaymentMethod,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'OrderDate': orderDate,
      'Enable': enable,
      'OrderUser': orderUser,
      'OrderTotal': orderTotal,
      'OrderCode': orderCode,
      'OrderStatus': orderStatus,
      'OrderPaymentMethod': orderPaymentMethod,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrderRecordDocumentEquality implements Equality<OrderRecord> {
  const OrderRecordDocumentEquality();

  @override
  bool equals(OrderRecord? e1, OrderRecord? e2) {
    const listEquality = ListEquality();
    return e1?.orderDate == e2?.orderDate &&
        e1?.enable == e2?.enable &&
        e1?.orderUser == e2?.orderUser &&
        e1?.orderTotal == e2?.orderTotal &&
        e1?.orderCode == e2?.orderCode &&
        e1?.orderStatus == e2?.orderStatus &&
        listEquality.equals(e1?.product, e2?.product) &&
        e1?.orderPaymentMethod == e2?.orderPaymentMethod;
  }

  @override
  int hash(OrderRecord? e) => const ListEquality().hash([
        e?.orderDate,
        e?.enable,
        e?.orderUser,
        e?.orderTotal,
        e?.orderCode,
        e?.orderStatus,
        e?.product,
        e?.orderPaymentMethod
      ]);

  @override
  bool isValidKey(Object? o) => o is OrderRecord;
}
