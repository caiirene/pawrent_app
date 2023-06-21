import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HostPreferenceRecord extends FirestoreRecord {
  HostPreferenceRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "ok_with_cats" field.
  String? _okWithCats;
  String get okWithCats => _okWithCats ?? '';
  bool hasOkWithCats() => _okWithCats != null;

  // "ok_with_children" field.
  String? _okWithChildren;
  String get okWithChildren => _okWithChildren ?? '';
  bool hasOkWithChildren() => _okWithChildren != null;

  // "is_neutered" field.
  String? _isNeutered;
  String get isNeutered => _isNeutered ?? '';
  bool hasIsNeutered() => _isNeutered != null;

  // "Sheddinglevel" field.
  String? _sheddinglevel;
  String get sheddinglevel => _sheddinglevel ?? '';
  bool hasSheddinglevel() => _sheddinglevel != null;

  // "is_housetrained" field.
  String? _isHousetrained;
  String get isHousetrained => _isHousetrained ?? '';
  bool hasIsHousetrained() => _isHousetrained != null;

  // "Additional_Info" field.
  String? _additionalInfo;
  String get additionalInfo => _additionalInfo ?? '';
  bool hasAdditionalInfo() => _additionalInfo != null;

  // "User_Association" field.
  DocumentReference? _userAssociation;
  DocumentReference? get userAssociation => _userAssociation;
  bool hasUserAssociation() => _userAssociation != null;

  void _initializeFields() {
    _okWithCats = snapshotData['ok_with_cats'] as String?;
    _okWithChildren = snapshotData['ok_with_children'] as String?;
    _isNeutered = snapshotData['is_neutered'] as String?;
    _sheddinglevel = snapshotData['Sheddinglevel'] as String?;
    _isHousetrained = snapshotData['is_housetrained'] as String?;
    _additionalInfo = snapshotData['Additional_Info'] as String?;
    _userAssociation = snapshotData['User_Association'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Host_preference');

  static Stream<HostPreferenceRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HostPreferenceRecord.fromSnapshot(s));

  static Future<HostPreferenceRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => HostPreferenceRecord.fromSnapshot(s));

  static HostPreferenceRecord fromSnapshot(DocumentSnapshot snapshot) =>
      HostPreferenceRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HostPreferenceRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HostPreferenceRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HostPreferenceRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HostPreferenceRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createHostPreferenceRecordData({
  String? okWithCats,
  String? okWithChildren,
  String? isNeutered,
  String? sheddinglevel,
  String? isHousetrained,
  String? additionalInfo,
  DocumentReference? userAssociation,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ok_with_cats': okWithCats,
      'ok_with_children': okWithChildren,
      'is_neutered': isNeutered,
      'Sheddinglevel': sheddinglevel,
      'is_housetrained': isHousetrained,
      'Additional_Info': additionalInfo,
      'User_Association': userAssociation,
    }.withoutNulls,
  );

  return firestoreData;
}
