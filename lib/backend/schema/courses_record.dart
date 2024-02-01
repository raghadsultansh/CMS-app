import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CoursesRecord extends FirestoreRecord {
  CoursesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "CourseID" field.
  int? _courseID;
  int get courseID => _courseID ?? 0;
  bool hasCourseID() => _courseID != null;

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "Description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "courselink" field.
  List<DocumentReference>? _courselink;
  List<DocumentReference> get courselink => _courselink ?? const [];
  bool hasCourselink() => _courselink != null;

  void _initializeFields() {
    _courseID = castToType<int>(snapshotData['CourseID']);
    _name = snapshotData['Name'] as String?;
    _description = snapshotData['Description'] as String?;
    _courselink = getDataList(snapshotData['courselink']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Courses');

  static Stream<CoursesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CoursesRecord.fromSnapshot(s));

  static Future<CoursesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CoursesRecord.fromSnapshot(s));

  static CoursesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CoursesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CoursesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CoursesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CoursesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CoursesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCoursesRecordData({
  int? courseID,
  String? name,
  String? description,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'CourseID': courseID,
      'Name': name,
      'Description': description,
    }.withoutNulls,
  );

  return firestoreData;
}

class CoursesRecordDocumentEquality implements Equality<CoursesRecord> {
  const CoursesRecordDocumentEquality();

  @override
  bool equals(CoursesRecord? e1, CoursesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.courseID == e2?.courseID &&
        e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        listEquality.equals(e1?.courselink, e2?.courselink);
  }

  @override
  int hash(CoursesRecord? e) => const ListEquality()
      .hash([e?.courseID, e?.name, e?.description, e?.courselink]);

  @override
  bool isValidKey(Object? o) => o is CoursesRecord;
}
