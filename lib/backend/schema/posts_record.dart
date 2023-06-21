import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PostsRecord extends FirestoreRecord {
  PostsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "post_title" field.
  String? _postTitle;
  String get postTitle => _postTitle ?? '';
  bool hasPostTitle() => _postTitle != null;

  // "post_description" field.
  String? _postDescription;
  String get postDescription => _postDescription ?? '';
  bool hasPostDescription() => _postDescription != null;

  // "post_user" field.
  DocumentReference? _postUser;
  DocumentReference? get postUser => _postUser;
  bool hasPostUser() => _postUser != null;

  // "time_posted" field.
  DateTime? _timePosted;
  DateTime? get timePosted => _timePosted;
  bool hasTimePosted() => _timePosted != null;

  // "num_comments" field.
  int? _numComments;
  int get numComments => _numComments ?? 0;
  bool hasNumComments() => _numComments != null;

  // "Post_title_2" field.
  String? _postTitle2;
  String get postTitle2 => _postTitle2 ?? '';
  bool hasPostTitle2() => _postTitle2 != null;

  // "Post_Photos" field.
  String? _postPhotos;
  String get postPhotos => _postPhotos ?? '';
  bool hasPostPhotos() => _postPhotos != null;

  // "Post_Group" field.
  String? _postGroup;
  String get postGroup => _postGroup ?? '';
  bool hasPostGroup() => _postGroup != null;

  // "Post_by_firstname" field.
  String? _postByFirstname;
  String get postByFirstname => _postByFirstname ?? '';
  bool hasPostByFirstname() => _postByFirstname != null;

  // "Post_Deleted" field.
  String? _postDeleted;
  String get postDeleted => _postDeleted ?? '';
  bool hasPostDeleted() => _postDeleted != null;

  // "Dog_association" field.
  DocumentReference? _dogAssociation;
  DocumentReference? get dogAssociation => _dogAssociation;
  bool hasDogAssociation() => _dogAssociation != null;

  void _initializeFields() {
    _postTitle = snapshotData['post_title'] as String?;
    _postDescription = snapshotData['post_description'] as String?;
    _postUser = snapshotData['post_user'] as DocumentReference?;
    _timePosted = snapshotData['time_posted'] as DateTime?;
    _numComments = snapshotData['num_comments'] as int?;
    _postTitle2 = snapshotData['Post_title_2'] as String?;
    _postPhotos = snapshotData['Post_Photos'] as String?;
    _postGroup = snapshotData['Post_Group'] as String?;
    _postByFirstname = snapshotData['Post_by_firstname'] as String?;
    _postDeleted = snapshotData['Post_Deleted'] as String?;
    _dogAssociation = snapshotData['Dog_association'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Posts');

  static Stream<PostsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PostsRecord.fromSnapshot(s));

  static Future<PostsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PostsRecord.fromSnapshot(s));

  static PostsRecord fromSnapshot(DocumentSnapshot snapshot) => PostsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PostsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PostsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PostsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PostsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPostsRecordData({
  String? postTitle,
  String? postDescription,
  DocumentReference? postUser,
  DateTime? timePosted,
  int? numComments,
  String? postTitle2,
  String? postPhotos,
  String? postGroup,
  String? postByFirstname,
  String? postDeleted,
  DocumentReference? dogAssociation,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'post_title': postTitle,
      'post_description': postDescription,
      'post_user': postUser,
      'time_posted': timePosted,
      'num_comments': numComments,
      'Post_title_2': postTitle2,
      'Post_Photos': postPhotos,
      'Post_Group': postGroup,
      'Post_by_firstname': postByFirstname,
      'Post_Deleted': postDeleted,
      'Dog_association': dogAssociation,
    }.withoutNulls,
  );

  return firestoreData;
}
