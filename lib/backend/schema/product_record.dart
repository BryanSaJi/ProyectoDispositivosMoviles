import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductRecord extends FirestoreRecord {
  ProductRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "NameProduct" field.
  String? _nameProduct;
  String get nameProduct => _nameProduct ?? '';
  bool hasNameProduct() => _nameProduct != null;

  // "Price" field.
  int? _price;
  int get price => _price ?? 0;
  bool hasPrice() => _price != null;

  // "Quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  // "Enable" field.
  bool? _enable;
  bool get enable => _enable ?? false;
  bool hasEnable() => _enable != null;

  // "DescriptionProduct" field.
  String? _descriptionProduct;
  String get descriptionProduct => _descriptionProduct ?? '';
  bool hasDescriptionProduct() => _descriptionProduct != null;

  // "timeProduct" field.
  int? _timeProduct;
  int get timeProduct => _timeProduct ?? 0;
  bool hasTimeProduct() => _timeProduct != null;

  // "ratingProduct" field.
  int? _ratingProduct;
  int get ratingProduct => _ratingProduct ?? 0;
  bool hasRatingProduct() => _ratingProduct != null;

  // "imageProduct" field.
  List<String>? _imageProduct;
  List<String> get imageProduct => _imageProduct ?? const [];
  bool hasImageProduct() => _imageProduct != null;

  // "sabor" field.
  String? _sabor;
  String get sabor => _sabor ?? '';
  bool hasSabor() => _sabor != null;

  void _initializeFields() {
    _nameProduct = snapshotData['NameProduct'] as String?;
    _price = castToType<int>(snapshotData['Price']);
    _quantity = castToType<int>(snapshotData['Quantity']);
    _enable = snapshotData['Enable'] as bool?;
    _descriptionProduct = snapshotData['DescriptionProduct'] as String?;
    _timeProduct = castToType<int>(snapshotData['timeProduct']);
    _ratingProduct = castToType<int>(snapshotData['ratingProduct']);
    _imageProduct = getDataList(snapshotData['imageProduct']);
    _sabor = snapshotData['sabor'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Product');

  static Stream<ProductRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductRecord.fromSnapshot(s));

  static Future<ProductRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductRecord.fromSnapshot(s));

  static ProductRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProductRecordData({
  String? nameProduct,
  int? price,
  int? quantity,
  bool? enable,
  String? descriptionProduct,
  int? timeProduct,
  int? ratingProduct,
  String? sabor,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'NameProduct': nameProduct,
      'Price': price,
      'Quantity': quantity,
      'Enable': enable,
      'DescriptionProduct': descriptionProduct,
      'timeProduct': timeProduct,
      'ratingProduct': ratingProduct,
      'sabor': sabor,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductRecordDocumentEquality implements Equality<ProductRecord> {
  const ProductRecordDocumentEquality();

  @override
  bool equals(ProductRecord? e1, ProductRecord? e2) {
    const listEquality = ListEquality();
    return e1?.nameProduct == e2?.nameProduct &&
        e1?.price == e2?.price &&
        e1?.quantity == e2?.quantity &&
        e1?.enable == e2?.enable &&
        e1?.descriptionProduct == e2?.descriptionProduct &&
        e1?.timeProduct == e2?.timeProduct &&
        e1?.ratingProduct == e2?.ratingProduct &&
        listEquality.equals(e1?.imageProduct, e2?.imageProduct) &&
        e1?.sabor == e2?.sabor;
  }

  @override
  int hash(ProductRecord? e) => const ListEquality().hash([
        e?.nameProduct,
        e?.price,
        e?.quantity,
        e?.enable,
        e?.descriptionProduct,
        e?.timeProduct,
        e?.ratingProduct,
        e?.imageProduct,
        e?.sabor
      ]);

  @override
  bool isValidKey(Object? o) => o is ProductRecord;
}
