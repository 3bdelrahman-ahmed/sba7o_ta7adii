
import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:spa7o_ta7adii/core/service/models/meenAnaDm.dart';
import 'package:spa7o_ta7adii/core/service/models/meenSoraDm.dart';
import 'package:spa7o_ta7adii/core/service/models/riskDm.dart';
import 'package:spa7o_ta7adii/core/service/models/seba2Dm.dart';

import 'models/actingDm.dart';
import 'models/bankDm.dart';
import 'models/labsDm.dart';

class FirebaseManager{
static CollectionReference<ActingDm> getActingCollection(){
return FirebaseFirestore.instance.collection("ActingQuest").
withConverter(fromFirestore:
    (snapshot, options) =>
    ActingDm.fromjson(snapshot.data()!),
    toFirestore: (value, options) {
      return value.tojson();
    },);
}
static Future<void> addActingQuest(ActingDm actingDm){
  var collection = getActingCollection();
  var docs = collection.doc();
   actingDm.id = docs.id;
  return docs.set(actingDm);
}
static Future<QuerySnapshot<ActingDm>> getActing() async {
  Random random = Random();

  // Get a reference to the collection
  CollectionReference<ActingDm> collectionRef = getActingCollection();

  // Retrieve all document IDs from the collection
  QuerySnapshot<ActingDm>  idQuerySnapshot =
  await collectionRef.orderBy(FieldPath.documentId).get();

  // Extract document IDs from the query snapshot
  List<String> documentIds =
  idQuerySnapshot.docs.map((doc) => doc.id).toList();

  // Shuffle the document IDs to achieve randomness
  documentIds.shuffle(random);

  // Limit the query to the first document after shuffling (optional)
  List<String> shuffledIds = documentIds.sublist(0, 1);

  // Query Firestore using the shuffled IDs
  QuerySnapshot<ActingDm> querySnapshot = await collectionRef
      .where(FieldPath.documentId, whereIn: shuffledIds)
      .get();

  return querySnapshot;
}
static CollectionReference<BankDm> getBankCollection(){
  return FirebaseFirestore.instance.collection("BankQuest").
  withConverter(fromFirestore: (snapshot, options) {
    return BankDm.fromjson(snapshot.data()!);
  }, toFirestore: (value, options) {
    return value.tojson();
  },);
}
static Future<void> addBankQuest(BankDm bankDm){
  var collection = getBankCollection();
  var doc = collection.doc();
  bankDm.id = doc.id;
  return doc.set(bankDm);
}

static CollectionReference<LabsDm> getLabsCollection(){
  return FirebaseFirestore.instance.collection("labsQuest").
  withConverter(fromFirestore: (snapshot, options) {
    return LabsDm.fromjson(snapshot.data()!);
  }, toFirestore: (value, options) {
    return value.tojson();
  },);
}
static Future<void> addLabsQuest(LabsDm labsDm){
  var collection = getLabsCollection();
  var doc = collection.doc();
  labsDm.id = doc.id;
  return doc.set(labsDm);
}
static CollectionReference<MeenAnaDm> getMeenAnaCollection(){
  return FirebaseFirestore.instance.collection("MeenAnaQuest").
  withConverter(fromFirestore: (snapshot, options) {
    return MeenAnaDm.fromjson(snapshot.data()!);
  }, toFirestore: (value, options) {
    return value.tojson();
  },);
}
static Future<void> addMeenAnaQuest(MeenAnaDm meenAnaDm){
  var collection = getMeenAnaCollection();
  var doc = collection.doc();
  meenAnaDm.id = doc.id;
  return doc.set(meenAnaDm);
}
static CollectionReference<MeenSoraDm> getMeenSoraCollection(){
  return FirebaseFirestore.instance.collection("MeenSoraQuest").
  withConverter(fromFirestore: (snapshot, options) {
    return MeenSoraDm.fromjson(snapshot.data()!);
  }, toFirestore: (value, options) {
    return value.tojson();
  },);
}
static Future<void> addMeenSoraQuest(MeenSoraDm meensoraDm){
  var collection = getMeenSoraCollection();
  var doc = collection.doc();
  meensoraDm.id = doc.id;
  return doc.set(meensoraDm);
}

static Future<QuerySnapshot<MeenSoraDm>> getSora() async{
  Random random = Random();

  CollectionReference<MeenSoraDm> collectionRef = getMeenSoraCollection();

  QuerySnapshot<MeenSoraDm> idQuerySnapshot = await collectionRef.orderBy(FieldPath.documentId).get();

  List<String> documentIds =
  idQuerySnapshot.docs.map((doc) => doc.id).toList();

  documentIds.shuffle(random);

  List<String> shuffledIds = documentIds.sublist(0, 1);

  QuerySnapshot<MeenSoraDm> querySnapshot = await collectionRef
      .where(FieldPath.documentId, whereIn: shuffledIds)
      .get();

  return querySnapshot;
}

static CollectionReference<RiskDm> getRiskCollection(){
  return FirebaseFirestore.instance.collection("RiskQuest").
  withConverter<RiskDm>(fromFirestore: (snapshot, options) {
    return RiskDm.fromjson(snapshot.data()!);
  }, toFirestore: (value, options) {
    return value.tojson();
  },);
}

static Future<void> addRiskQuest(RiskDm riskDm){
  var collection = getRiskCollection();
  var doc = collection.doc();
  riskDm.id = doc.id;
  return doc.set(riskDm);
}
static CollectionReference<Seba2Dm> getSeba2Collection(){
  return FirebaseFirestore.instance.collection("Seba2Quest").
  withConverter(fromFirestore: (snapshot, options) {
    return Seba2Dm.fromjson(snapshot.data()!);
  }, toFirestore: (value, options) {
    return value.tojson();
  },);
}

static Future<void> addSeba2Quest(Seba2Dm seba2Dm){
  var collection = getSeba2Collection();
  var doc = collection.doc();
  seba2Dm.id = doc.id;
  return doc.set(seba2Dm);
}
}