import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HelpRecord extends FirestoreRecord {
  HelpRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "time_posted" field.
  DateTime? _timePosted;
  DateTime? get timePosted => _timePosted;
  bool hasTimePosted() => _timePosted != null;

  // "Offer_help_user_1" field.
  DocumentReference? _offerHelpUser1;
  DocumentReference? get offerHelpUser1 => _offerHelpUser1;
  bool hasOfferHelpUser1() => _offerHelpUser1 != null;

  // "Receive_help_user_2" field.
  DocumentReference? _receiveHelpUser2;
  DocumentReference? get receiveHelpUser2 => _receiveHelpUser2;
  bool hasReceiveHelpUser2() => _receiveHelpUser2 != null;

  // "Dog_association" field.
  DocumentReference? _dogAssociation;
  DocumentReference? get dogAssociation => _dogAssociation;
  bool hasDogAssociation() => _dogAssociation != null;

  // "All_users" field.
  List<DocumentReference>? _allUsers;
  List<DocumentReference> get allUsers => _allUsers ?? const [];
  bool hasAllUsers() => _allUsers != null;

  // "Chat_Association" field.
  DocumentReference? _chatAssociation;
  DocumentReference? get chatAssociation => _chatAssociation;
  bool hasChatAssociation() => _chatAssociation != null;

  // "Help_offered_by_name" field.
  String? _helpOfferedByName;
  String get helpOfferedByName => _helpOfferedByName ?? '';
  bool hasHelpOfferedByName() => _helpOfferedByName != null;

  // "Post_association" field.
  DocumentReference? _postAssociation;
  DocumentReference? get postAssociation => _postAssociation;
  bool hasPostAssociation() => _postAssociation != null;

  // "AcceptHelp_YES_NOTYET" field.
  String? _acceptHelpYESNOTYET;
  String get acceptHelpYESNOTYET => _acceptHelpYESNOTYET ?? '';
  bool hasAcceptHelpYESNOTYET() => _acceptHelpYESNOTYET != null;

  void _initializeFields() {
    _timePosted = snapshotData['time_posted'] as DateTime?;
    _offerHelpUser1 = snapshotData['Offer_help_user_1'] as DocumentReference?;
    _receiveHelpUser2 =
        snapshotData['Receive_help_user_2'] as DocumentReference?;
    _dogAssociation = snapshotData['Dog_association'] as DocumentReference?;
    _allUsers = getDataList(snapshotData['All_users']);
    _chatAssociation = snapshotData['Chat_Association'] as DocumentReference?;
    _helpOfferedByName = snapshotData['Help_offered_by_name'] as String?;
    _postAssociation = snapshotData['Post_association'] as DocumentReference?;
    _acceptHelpYESNOTYET = snapshotData['AcceptHelp_YES_NOTYET'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Help');

  static Stream<HelpRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HelpRecord.fromSnapshot(s));

  static Future<HelpRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => HelpRecord.fromSnapshot(s));

  static HelpRecord fromSnapshot(DocumentSnapshot snapshot) => HelpRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HelpRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HelpRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HelpRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HelpRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createHelpRecordData({
  DateTime? timePosted,
  DocumentReference? offerHelpUser1,
  DocumentReference? receiveHelpUser2,
  DocumentReference? dogAssociation,
  DocumentReference? chatAssociation,
  String? helpOfferedByName,
  DocumentReference? postAssociation,
  String? acceptHelpYESNOTYET,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'time_posted': timePosted,
      'Offer_help_user_1': offerHelpUser1,
      'Receive_help_user_2': receiveHelpUser2,
      'Dog_association': dogAssociation,
      'Chat_Association': chatAssociation,
      'Help_offered_by_name': helpOfferedByName,
      'Post_association': postAssociation,
      'AcceptHelp_YES_NOTYET': acceptHelpYESNOTYET,
    }.withoutNulls,
  );

  return firestoreData;
}
