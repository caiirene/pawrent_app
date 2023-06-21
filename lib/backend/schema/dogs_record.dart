import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DogsRecord extends FirestoreRecord {
  DogsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Dogs_name" field.
  String? _dogsName;
  String get dogsName => _dogsName ?? '';
  bool hasDogsName() => _dogsName != null;

  // "Dogs_Breed" field.
  String? _dogsBreed;
  String get dogsBreed => _dogsBreed ?? '';
  bool hasDogsBreed() => _dogsBreed != null;

  // "ok_with_cats" field.
  String? _okWithCats;
  String get okWithCats => _okWithCats ?? '';
  bool hasOkWithCats() => _okWithCats != null;

  // "ok_with_children" field.
  String? _okWithChildren;
  String get okWithChildren => _okWithChildren ?? '';
  bool hasOkWithChildren() => _okWithChildren != null;

  // "Dog_size" field.
  String? _dogSize;
  String get dogSize => _dogSize ?? '';
  bool hasDogSize() => _dogSize != null;

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

  // "is_seperationanxiety" field.
  String? _isSeperationanxiety;
  String get isSeperationanxiety => _isSeperationanxiety ?? '';
  bool hasIsSeperationanxiety() => _isSeperationanxiety != null;

  // "userAssociation" field.
  DocumentReference? _userAssociation;
  DocumentReference? get userAssociation => _userAssociation;
  bool hasUserAssociation() => _userAssociation != null;

  // "Dog_bio" field.
  String? _dogBio;
  String get dogBio => _dogBio ?? '';
  bool hasDogBio() => _dogBio != null;

  // "Dogs_name_2" field.
  String? _dogsName2;
  String get dogsName2 => _dogsName2 ?? '';
  bool hasDogsName2() => _dogsName2 != null;

  // "Dogs_breed_2" field.
  String? _dogsBreed2;
  String get dogsBreed2 => _dogsBreed2 ?? '';
  bool hasDogsBreed2() => _dogsBreed2 != null;

  // "Ok_with_cats_2" field.
  String? _okWithCats2;
  String get okWithCats2 => _okWithCats2 ?? '';
  bool hasOkWithCats2() => _okWithCats2 != null;

  // "Ok_with_children_2" field.
  String? _okWithChildren2;
  String get okWithChildren2 => _okWithChildren2 ?? '';
  bool hasOkWithChildren2() => _okWithChildren2 != null;

  // "Dog_size_2" field.
  String? _dogSize2;
  String get dogSize2 => _dogSize2 ?? '';
  bool hasDogSize2() => _dogSize2 != null;

  // "is_neutered_2" field.
  String? _isNeutered2;
  String get isNeutered2 => _isNeutered2 ?? '';
  bool hasIsNeutered2() => _isNeutered2 != null;

  // "Shedding_level_2" field.
  String? _sheddingLevel2;
  String get sheddingLevel2 => _sheddingLevel2 ?? '';
  bool hasSheddingLevel2() => _sheddingLevel2 != null;

  // "is_housetrained_2" field.
  String? _isHousetrained2;
  String get isHousetrained2 => _isHousetrained2 ?? '';
  bool hasIsHousetrained2() => _isHousetrained2 != null;

  // "is_seperation_anxiety_2" field.
  String? _isSeperationAnxiety2;
  String get isSeperationAnxiety2 => _isSeperationAnxiety2 ?? '';
  bool hasIsSeperationAnxiety2() => _isSeperationAnxiety2 != null;

  // "Dog_bio_2" field.
  String? _dogBio2;
  String get dogBio2 => _dogBio2 ?? '';
  bool hasDogBio2() => _dogBio2 != null;

  // "Dog_age" field.
  String? _dogAge;
  String get dogAge => _dogAge ?? '';
  bool hasDogAge() => _dogAge != null;

  // "Dog_age_2" field.
  String? _dogAge2;
  String get dogAge2 => _dogAge2 ?? '';
  bool hasDogAge2() => _dogAge2 != null;

  void _initializeFields() {
    _dogsName = snapshotData['Dogs_name'] as String?;
    _dogsBreed = snapshotData['Dogs_Breed'] as String?;
    _okWithCats = snapshotData['ok_with_cats'] as String?;
    _okWithChildren = snapshotData['ok_with_children'] as String?;
    _dogSize = snapshotData['Dog_size'] as String?;
    _isNeutered = snapshotData['is_neutered'] as String?;
    _sheddinglevel = snapshotData['Sheddinglevel'] as String?;
    _isHousetrained = snapshotData['is_housetrained'] as String?;
    _isSeperationanxiety = snapshotData['is_seperationanxiety'] as String?;
    _userAssociation = snapshotData['userAssociation'] as DocumentReference?;
    _dogBio = snapshotData['Dog_bio'] as String?;
    _dogsName2 = snapshotData['Dogs_name_2'] as String?;
    _dogsBreed2 = snapshotData['Dogs_breed_2'] as String?;
    _okWithCats2 = snapshotData['Ok_with_cats_2'] as String?;
    _okWithChildren2 = snapshotData['Ok_with_children_2'] as String?;
    _dogSize2 = snapshotData['Dog_size_2'] as String?;
    _isNeutered2 = snapshotData['is_neutered_2'] as String?;
    _sheddingLevel2 = snapshotData['Shedding_level_2'] as String?;
    _isHousetrained2 = snapshotData['is_housetrained_2'] as String?;
    _isSeperationAnxiety2 = snapshotData['is_seperation_anxiety_2'] as String?;
    _dogBio2 = snapshotData['Dog_bio_2'] as String?;
    _dogAge = snapshotData['Dog_age'] as String?;
    _dogAge2 = snapshotData['Dog_age_2'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Dogs');

  static Stream<DogsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DogsRecord.fromSnapshot(s));

  static Future<DogsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DogsRecord.fromSnapshot(s));

  static DogsRecord fromSnapshot(DocumentSnapshot snapshot) => DogsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DogsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DogsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DogsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DogsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDogsRecordData({
  String? dogsName,
  String? dogsBreed,
  String? okWithCats,
  String? okWithChildren,
  String? dogSize,
  String? isNeutered,
  String? sheddinglevel,
  String? isHousetrained,
  String? isSeperationanxiety,
  DocumentReference? userAssociation,
  String? dogBio,
  String? dogsName2,
  String? dogsBreed2,
  String? okWithCats2,
  String? okWithChildren2,
  String? dogSize2,
  String? isNeutered2,
  String? sheddingLevel2,
  String? isHousetrained2,
  String? isSeperationAnxiety2,
  String? dogBio2,
  String? dogAge,
  String? dogAge2,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Dogs_name': dogsName,
      'Dogs_Breed': dogsBreed,
      'ok_with_cats': okWithCats,
      'ok_with_children': okWithChildren,
      'Dog_size': dogSize,
      'is_neutered': isNeutered,
      'Sheddinglevel': sheddinglevel,
      'is_housetrained': isHousetrained,
      'is_seperationanxiety': isSeperationanxiety,
      'userAssociation': userAssociation,
      'Dog_bio': dogBio,
      'Dogs_name_2': dogsName2,
      'Dogs_breed_2': dogsBreed2,
      'Ok_with_cats_2': okWithCats2,
      'Ok_with_children_2': okWithChildren2,
      'Dog_size_2': dogSize2,
      'is_neutered_2': isNeutered2,
      'Shedding_level_2': sheddingLevel2,
      'is_housetrained_2': isHousetrained2,
      'is_seperation_anxiety_2': isSeperationAnxiety2,
      'Dog_bio_2': dogBio2,
      'Dog_age': dogAge,
      'Dog_age_2': dogAge2,
    }.withoutNulls,
  );

  return firestoreData;
}
