import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TaskRecord extends FirestoreRecord {
  TaskRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "TaskID" field.
  int? _taskID;
  int get taskID => _taskID ?? 0;
  bool hasTaskID() => _taskID != null;

  // "Title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "Description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "DueDate" field.
  DateTime? _dueDate;
  DateTime? get dueDate => _dueDate;
  bool hasDueDate() => _dueDate != null;

  // "Completed" field.
  bool? _completed;
  bool get completed => _completed ?? false;
  bool hasCompleted() => _completed != null;

  // "TimeStamp" field.
  DateTime? _timeStamp;
  DateTime? get timeStamp => _timeStamp;
  bool hasTimeStamp() => _timeStamp != null;

  // "uid" field.
  DocumentReference? _uid;
  DocumentReference? get uid => _uid;
  bool hasUid() => _uid != null;

  void _initializeFields() {
    _taskID = castToType<int>(snapshotData['TaskID']);
    _title = snapshotData['Title'] as String?;
    _description = snapshotData['Description'] as String?;
    _dueDate = snapshotData['DueDate'] as DateTime?;
    _completed = snapshotData['Completed'] as bool?;
    _timeStamp = snapshotData['TimeStamp'] as DateTime?;
    _uid = snapshotData['uid'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Task');

  static Stream<TaskRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TaskRecord.fromSnapshot(s));

  static Future<TaskRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TaskRecord.fromSnapshot(s));

  static TaskRecord fromSnapshot(DocumentSnapshot snapshot) => TaskRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TaskRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TaskRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TaskRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TaskRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTaskRecordData({
  int? taskID,
  String? title,
  String? description,
  DateTime? dueDate,
  bool? completed,
  DateTime? timeStamp,
  DocumentReference? uid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'TaskID': taskID,
      'Title': title,
      'Description': description,
      'DueDate': dueDate,
      'Completed': completed,
      'TimeStamp': timeStamp,
      'uid': uid,
    }.withoutNulls,
  );

  return firestoreData;
}

class TaskRecordDocumentEquality implements Equality<TaskRecord> {
  const TaskRecordDocumentEquality();

  @override
  bool equals(TaskRecord? e1, TaskRecord? e2) {
    return e1?.taskID == e2?.taskID &&
        e1?.title == e2?.title &&
        e1?.description == e2?.description &&
        e1?.dueDate == e2?.dueDate &&
        e1?.completed == e2?.completed &&
        e1?.timeStamp == e2?.timeStamp &&
        e1?.uid == e2?.uid;
  }

  @override
  int hash(TaskRecord? e) => const ListEquality().hash([
        e?.taskID,
        e?.title,
        e?.description,
        e?.dueDate,
        e?.completed,
        e?.timeStamp,
        e?.uid
      ]);

  @override
  bool isValidKey(Object? o) => o is TaskRecord;
}
