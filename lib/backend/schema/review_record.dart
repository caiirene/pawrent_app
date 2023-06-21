import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReviewRecord extends FirestoreRecord {
  ReviewRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Review_detail" field.
  String? _reviewDetail;
  String get reviewDetail => _reviewDetail ?? '';
  bool hasReviewDetail() => _reviewDetail != null;

  // "Reviewedby_User" field.
  DocumentReference? _reviewedbyUser;
  DocumentReference? get reviewedbyUser => _reviewedbyUser;
  bool hasReviewedbyUser() => _reviewedbyUser != null;

  // "Review_to_user" field.
  DocumentReference? _reviewToUser;
  DocumentReference? get reviewToUser => _reviewToUser;
  bool hasReviewToUser() => _reviewToUser != null;

  // "Rating_created" field.
  DateTime? _ratingCreated;
  DateTime? get ratingCreated => _ratingCreated;
  bool hasRatingCreated() => _ratingCreated != null;

  // "rating" field.
  double? _rating;
  double get rating => _rating ?? 0.0;
  bool hasRating() => _rating != null;

  // "Review_Help_Type" field.
  String? _reviewHelpType;
  String get reviewHelpType => _reviewHelpType ?? '';
  bool hasReviewHelpType() => _reviewHelpType != null;

  // "Review_boarding_days" field.
  String? _reviewBoardingDays;
  String get reviewBoardingDays => _reviewBoardingDays ?? '';
  bool hasReviewBoardingDays() => _reviewBoardingDays != null;

  void _initializeFields() {
    _reviewDetail = snapshotData['Review_detail'] as String?;
    _reviewedbyUser = snapshotData['Reviewedby_User'] as DocumentReference?;
    _reviewToUser = snapshotData['Review_to_user'] as DocumentReference?;
    _ratingCreated = snapshotData['Rating_created'] as DateTime?;
    _rating = castToType<double>(snapshotData['rating']);
    _reviewHelpType = snapshotData['Review_Help_Type'] as String?;
    _reviewBoardingDays = snapshotData['Review_boarding_days'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Review');

  static Stream<ReviewRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReviewRecord.fromSnapshot(s));

  static Future<ReviewRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReviewRecord.fromSnapshot(s));

  static ReviewRecord fromSnapshot(DocumentSnapshot snapshot) => ReviewRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReviewRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReviewRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReviewRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReviewRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReviewRecordData({
  String? reviewDetail,
  DocumentReference? reviewedbyUser,
  DocumentReference? reviewToUser,
  DateTime? ratingCreated,
  double? rating,
  String? reviewHelpType,
  String? reviewBoardingDays,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Review_detail': reviewDetail,
      'Reviewedby_User': reviewedbyUser,
      'Review_to_user': reviewToUser,
      'Rating_created': ratingCreated,
      'rating': rating,
      'Review_Help_Type': reviewHelpType,
      'Review_boarding_days': reviewBoardingDays,
    }.withoutNulls,
  );

  return firestoreData;
}
