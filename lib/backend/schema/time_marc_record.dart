import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TimeMarcRecord extends FirestoreRecord {
  TimeMarcRecord._(
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

  // "Date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "InMarc" field.
  DateTime? _inMarc;
  DateTime? get inMarc => _inMarc;
  bool hasInMarc() => _inMarc != null;

  // "OutMarc" field.
  DateTime? _outMarc;
  DateTime? get outMarc => _outMarc;
  bool hasOutMarc() => _outMarc != null;

  // "Hours" field.
  double? _hours;
  double get hours => _hours ?? 0.0;
  bool hasHours() => _hours != null;

  void _initializeFields() {
    _name = snapshotData['Name'] as String?;
    _lastname = snapshotData['Lastname'] as String?;
    _date = snapshotData['Date'] as DateTime?;
    _inMarc = snapshotData['InMarc'] as DateTime?;
    _outMarc = snapshotData['OutMarc'] as DateTime?;
    _hours = castToType<double>(snapshotData['Hours']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('TimeMarc');

  static Stream<TimeMarcRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TimeMarcRecord.fromSnapshot(s));

  static Future<TimeMarcRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TimeMarcRecord.fromSnapshot(s));

  static TimeMarcRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TimeMarcRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TimeMarcRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TimeMarcRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TimeMarcRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TimeMarcRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTimeMarcRecordData({
  String? name,
  String? lastname,
  DateTime? date,
  DateTime? inMarc,
  DateTime? outMarc,
  double? hours,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Name': name,
      'Lastname': lastname,
      'Date': date,
      'InMarc': inMarc,
      'OutMarc': outMarc,
      'Hours': hours,
    }.withoutNulls,
  );

  return firestoreData;
}

class TimeMarcRecordDocumentEquality implements Equality<TimeMarcRecord> {
  const TimeMarcRecordDocumentEquality();

  @override
  bool equals(TimeMarcRecord? e1, TimeMarcRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.lastname == e2?.lastname &&
        e1?.date == e2?.date &&
        e1?.inMarc == e2?.inMarc &&
        e1?.outMarc == e2?.outMarc &&
        e1?.hours == e2?.hours;
  }

  @override
  int hash(TimeMarcRecord? e) => const ListEquality()
      .hash([e?.name, e?.lastname, e?.date, e?.inMarc, e?.outMarc, e?.hours]);

  @override
  bool isValidKey(Object? o) => o is TimeMarcRecord;
}
