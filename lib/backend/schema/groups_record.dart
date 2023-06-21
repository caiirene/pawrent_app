import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GroupsRecord extends FirestoreRecord {
  GroupsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Groupid" field.
  String? _groupid;
  String get groupid => _groupid ?? '';
  bool hasGroupid() => _groupid != null;

  // "Grouptitle" field.
  String? _grouptitle;
  String get grouptitle => _grouptitle ?? '';
  bool hasGrouptitle() => _grouptitle != null;

  // "Datecreated" field.
  DateTime? _datecreated;
  DateTime? get datecreated => _datecreated;
  bool hasDatecreated() => _datecreated != null;

  // "About" field.
  String? _about;
  String get about => _about ?? '';
  bool hasAbout() => _about != null;

  // "Groupphoto" field.
  String? _groupphoto;
  String get groupphoto => _groupphoto ?? '';
  bool hasGroupphoto() => _groupphoto != null;

  // "Members_ref" field.
  List<DocumentReference>? _membersRef;
  List<DocumentReference> get membersRef => _membersRef ?? const [];
  bool hasMembersRef() => _membersRef != null;

  // "Is_private" field.
  bool? _isPrivate;
  bool get isPrivate => _isPrivate ?? false;
  bool hasIsPrivate() => _isPrivate != null;

  // "Is_active" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  bool hasIsActive() => _isActive != null;

  void _initializeFields() {
    _groupid = snapshotData['Groupid'] as String?;
    _grouptitle = snapshotData['Grouptitle'] as String?;
    _datecreated = snapshotData['Datecreated'] as DateTime?;
    _about = snapshotData['About'] as String?;
    _groupphoto = snapshotData['Groupphoto'] as String?;
    _membersRef = getDataList(snapshotData['Members_ref']);
    _isPrivate = snapshotData['Is_private'] as bool?;
    _isActive = snapshotData['Is_active'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Groups');

  static Stream<GroupsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GroupsRecord.fromSnapshot(s));

  static Future<GroupsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GroupsRecord.fromSnapshot(s));

  static GroupsRecord fromSnapshot(DocumentSnapshot snapshot) => GroupsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GroupsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GroupsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GroupsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GroupsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGroupsRecordData({
  String? groupid,
  String? grouptitle,
  DateTime? datecreated,
  String? about,
  String? groupphoto,
  bool? isPrivate,
  bool? isActive,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Groupid': groupid,
      'Grouptitle': grouptitle,
      'Datecreated': datecreated,
      'About': about,
      'Groupphoto': groupphoto,
      'Is_private': isPrivate,
      'Is_active': isActive,
    }.withoutNulls,
  );

  return firestoreData;
}
