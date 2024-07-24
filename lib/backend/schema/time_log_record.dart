import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TimeLogRecord extends FirestoreRecord {
  TimeLogRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "LastName" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  bool hasLastName() => _lastName != null;

  // "MarcIn" field.
  DateTime? _marcIn;
  DateTime? get marcIn => _marcIn;
  bool hasMarcIn() => _marcIn != null;

  // "MarcOut" field.
  DateTime? _marcOut;
  DateTime? get marcOut => _marcOut;
  bool hasMarcOut() => _marcOut != null;

  void _initializeFields() {
    _date = snapshotData['Date'] as DateTime?;
    _name = snapshotData['Name'] as String?;
    _lastName = snapshotData['LastName'] as String?;
    _marcIn = snapshotData['MarcIn'] as DateTime?;
    _marcOut = snapshotData['MarcOut'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('TimeLog');

  static Stream<TimeLogRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TimeLogRecord.fromSnapshot(s));

  static Future<TimeLogRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TimeLogRecord.fromSnapshot(s));

  static TimeLogRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TimeLogRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TimeLogRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TimeLogRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TimeLogRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TimeLogRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTimeLogRecordData({
  DateTime? date,
  String? name,
  String? lastName,
  DateTime? marcIn,
  DateTime? marcOut,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Date': date,
      'Name': name,
      'LastName': lastName,
      'MarcIn': marcIn,
      'MarcOut': marcOut,
    }.withoutNulls,
  );

  return firestoreData;
}

class TimeLogRecordDocumentEquality implements Equality<TimeLogRecord> {
  const TimeLogRecordDocumentEquality();

  @override
  bool equals(TimeLogRecord? e1, TimeLogRecord? e2) {
    return e1?.date == e2?.date &&
        e1?.name == e2?.name &&
        e1?.lastName == e2?.lastName &&
        e1?.marcIn == e2?.marcIn &&
        e1?.marcOut == e2?.marcOut;
  }

  @override
  int hash(TimeLogRecord? e) => const ListEquality()
      .hash([e?.date, e?.name, e?.lastName, e?.marcIn, e?.marcOut]);

  @override
  bool isValidKey(Object? o) => o is TimeLogRecord;
}
