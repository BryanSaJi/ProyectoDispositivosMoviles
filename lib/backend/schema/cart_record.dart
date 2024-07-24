import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CartRecord extends FirestoreRecord {
  CartRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Buyer" field.
  DocumentReference? _buyer;
  DocumentReference? get buyer => _buyer;
  bool hasBuyer() => _buyer != null;

  // "Product" field.
  DocumentReference? _product;
  DocumentReference? get product => _product;
  bool hasProduct() => _product != null;

  // "Quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  // "Subtotal" field.
  int? _subtotal;
  int get subtotal => _subtotal ?? 0;
  bool hasSubtotal() => _subtotal != null;

  // "nameProduct" field.
  String? _nameProduct;
  String get nameProduct => _nameProduct ?? '';
  bool hasNameProduct() => _nameProduct != null;

  void _initializeFields() {
    _buyer = snapshotData['Buyer'] as DocumentReference?;
    _product = snapshotData['Product'] as DocumentReference?;
    _quantity = castToType<int>(snapshotData['Quantity']);
    _subtotal = castToType<int>(snapshotData['Subtotal']);
    _nameProduct = snapshotData['nameProduct'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Cart');

  static Stream<CartRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CartRecord.fromSnapshot(s));

  static Future<CartRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CartRecord.fromSnapshot(s));

  static CartRecord fromSnapshot(DocumentSnapshot snapshot) => CartRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CartRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CartRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CartRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CartRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCartRecordData({
  DocumentReference? buyer,
  DocumentReference? product,
  int? quantity,
  int? subtotal,
  String? nameProduct,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Buyer': buyer,
      'Product': product,
      'Quantity': quantity,
      'Subtotal': subtotal,
      'nameProduct': nameProduct,
    }.withoutNulls,
  );

  return firestoreData;
}

class CartRecordDocumentEquality implements Equality<CartRecord> {
  const CartRecordDocumentEquality();

  @override
  bool equals(CartRecord? e1, CartRecord? e2) {
    return e1?.buyer == e2?.buyer &&
        e1?.product == e2?.product &&
        e1?.quantity == e2?.quantity &&
        e1?.subtotal == e2?.subtotal &&
        e1?.nameProduct == e2?.nameProduct;
  }

  @override
  int hash(CartRecord? e) => const ListEquality()
      .hash([e?.buyer, e?.product, e?.quantity, e?.subtotal, e?.nameProduct]);

  @override
  bool isValidKey(Object? o) => o is CartRecord;
}
