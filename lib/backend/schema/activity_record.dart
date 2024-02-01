import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ActivityRecord extends FirestoreRecord {
  ActivityRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "ActivityID" field.
  int? _activityID;
  int get activityID => _activityID ?? 0;
  bool hasActivityID() => _activityID != null;

  // "uid" field.
  DocumentReference? _uid;
  DocumentReference? get uid => _uid;
  bool hasUid() => _uid != null;

  // "TimeStamp" field.
  DateTime? _timeStamp;
  DateTime? get timeStamp => _timeStamp;
  bool hasTimeStamp() => _timeStamp != null;

  void _initializeFields() {
    _activityID = castToType<int>(snapshotData['ActivityID']);
    _uid = snapshotData['uid'] as DocumentReference?;
    _timeStamp = snapshotData['TimeStamp'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Activity');

  static Stream<ActivityRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ActivityRecord.fromSnapshot(s));

  static Future<ActivityRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ActivityRecord.fromSnapshot(s));

  static ActivityRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ActivityRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ActivityRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ActivityRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ActivityRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ActivityRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createActivityRecordData({
  int? activityID,
  DocumentReference? uid,
  DateTime? timeStamp,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ActivityID': activityID,
      'uid': uid,
      'TimeStamp': timeStamp,
    }.withoutNulls,
  );

  return firestoreData;
}

class ActivityRecordDocumentEquality implements Equality<ActivityRecord> {
  const ActivityRecordDocumentEquality();

  @override
  bool equals(ActivityRecord? e1, ActivityRecord? e2) {
    return e1?.activityID == e2?.activityID &&
        e1?.uid == e2?.uid &&
        e1?.timeStamp == e2?.timeStamp;
  }

  @override
  int hash(ActivityRecord? e) =>
      const ListEquality().hash([e?.activityID, e?.uid, e?.timeStamp]);

  @override
  bool isValidKey(Object? o) => o is ActivityRecord;
}
