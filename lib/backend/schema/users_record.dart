import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "Firstname" field.
  String? _firstname;
  String get firstname => _firstname ?? '';
  bool hasFirstname() => _firstname != null;

  // "Lastname" field.
  String? _lastname;
  String get lastname => _lastname ?? '';
  bool hasLastname() => _lastname != null;

  // "Zipcode" field.
  int? _zipcode;
  int get zipcode => _zipcode ?? 0;
  bool hasZipcode() => _zipcode != null;

  // "Review_no_ref" field.
  List<DocumentReference>? _reviewNoRef;
  List<DocumentReference> get reviewNoRef => _reviewNoRef ?? const [];
  bool hasReviewNoRef() => _reviewNoRef != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "User_referral_code" field.
  String? _userReferralCode;
  String get userReferralCode => _userReferralCode ?? '';
  bool hasUserReferralCode() => _userReferralCode != null;

  // "Dog_Association" field.
  DocumentReference? _dogAssociation;
  DocumentReference? get dogAssociation => _dogAssociation;
  bool hasDogAssociation() => _dogAssociation != null;

  // "Review_score" field.
  int? _reviewScore;
  int get reviewScore => _reviewScore ?? 0;
  bool hasReviewScore() => _reviewScore != null;

  // "One_or_two_dogs" field.
  int? _oneOrTwoDogs;
  int get oneOrTwoDogs => _oneOrTwoDogs ?? 0;
  bool hasOneOrTwoDogs() => _oneOrTwoDogs != null;

  // "Points_Balance" field.
  int? _pointsBalance;
  int get pointsBalance => _pointsBalance ?? 0;
  bool hasPointsBalance() => _pointsBalance != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _firstname = snapshotData['Firstname'] as String?;
    _lastname = snapshotData['Lastname'] as String?;
    _zipcode = snapshotData['Zipcode'] as int?;
    _reviewNoRef = getDataList(snapshotData['Review_no_ref']);
    _uid = snapshotData['uid'] as String?;
    _userReferralCode = snapshotData['User_referral_code'] as String?;
    _dogAssociation = snapshotData['Dog_Association'] as DocumentReference?;
    _reviewScore = snapshotData['Review_score'] as int?;
    _oneOrTwoDogs = snapshotData['One_or_two_dogs'] as int?;
    _pointsBalance = snapshotData['Points_Balance'] as int?;
    _displayName = snapshotData['display_name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? photoUrl,
  DateTime? createdTime,
  String? phoneNumber,
  String? firstname,
  String? lastname,
  int? zipcode,
  String? uid,
  String? userReferralCode,
  DocumentReference? dogAssociation,
  int? reviewScore,
  int? oneOrTwoDogs,
  int? pointsBalance,
  String? displayName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'photo_url': photoUrl,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'Firstname': firstname,
      'Lastname': lastname,
      'Zipcode': zipcode,
      'uid': uid,
      'User_referral_code': userReferralCode,
      'Dog_Association': dogAssociation,
      'Review_score': reviewScore,
      'One_or_two_dogs': oneOrTwoDogs,
      'Points_Balance': pointsBalance,
      'display_name': displayName,
    }.withoutNulls,
  );

  return firestoreData;
}
