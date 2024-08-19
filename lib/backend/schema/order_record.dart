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

  // "OrderQuantity" field.
  List<int>? _orderQuantity;
  List<int> get orderQuantity => _orderQuantity ?? const [];
  bool hasOrderQuantity() => _orderQuantity != null;

  // "OrderPrices" field.
  List<int>? _orderPrices;
  List<int> get orderPrices => _orderPrices ?? const [];
  bool hasOrderPrices() => _orderPrices != null;

  // "OrderItems" field.
  List<String>? _orderItems;
  List<String> get orderItems => _orderItems ?? const [];
  bool hasOrderItems() => _orderItems != null;

  void _initializeFields() {
    _orderDate = snapshotData['OrderDate'] as DateTime?;
    _orderUser = snapshotData['OrderUser'] as DocumentReference?;
    _orderTotal = castToType<int>(snapshotData['OrderTotal']);
    _orderCode = snapshotData['OrderCode'] as String?;
    _orderStatus = snapshotData['OrderStatus'] as String?;
    _product = getDataList(snapshotData['Product']);
    _orderPaymentMethod =
        snapshotData['OrderPaymentMethod'] as DocumentReference?;
    _orderQuantity = getDataList(snapshotData['OrderQuantity']);
    _orderPrices = getDataList(snapshotData['OrderPrices']);
    _orderItems = getDataList(snapshotData['OrderItems']);
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
  DocumentReference? orderUser,
  int? orderTotal,
  String? orderCode,
  String? orderStatus,
  DocumentReference? orderPaymentMethod,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'OrderDate': orderDate,
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
        e1?.orderUser == e2?.orderUser &&
        e1?.orderTotal == e2?.orderTotal &&
        e1?.orderCode == e2?.orderCode &&
        e1?.orderStatus == e2?.orderStatus &&
        listEquality.equals(e1?.product, e2?.product) &&
        e1?.orderPaymentMethod == e2?.orderPaymentMethod &&
        listEquality.equals(e1?.orderQuantity, e2?.orderQuantity) &&
        listEquality.equals(e1?.orderPrices, e2?.orderPrices) &&
        listEquality.equals(e1?.orderItems, e2?.orderItems);
  }

  @override
  int hash(OrderRecord? e) => const ListEquality().hash([
        e?.orderDate,
        e?.orderUser,
        e?.orderTotal,
        e?.orderCode,
        e?.orderStatus,
        e?.product,
        e?.orderPaymentMethod,
        e?.orderQuantity,
        e?.orderPrices,
        e?.orderItems
      ]);

  @override
  bool isValidKey(Object? o) => o is OrderRecord;
}
