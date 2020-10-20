import "package:cloud_firestore/cloud_firestore.dart";
import 'package:my_app/models/brew.dart';

class DatabaseService {
  final CollectionReference brewCollection =
      Firestore.instance.collection("brews");

  final String uid;

  DatabaseService({this.uid});

  Future updateUserData(String sugars, String name, int strength) async {
    return await brewCollection
        .document(uid)
        .setData({'sugars': sugars, 'name': name, 'strength': strength});
  }

  List<Brew> _brewListFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.documents.map((document) {
      return Brew(
          name: document.data["name"] ?? "",
          sugars: document.data["sugars"],
          strength: document.data["strength"]);
    }).toList();
  }

  Stream<List<Brew>> get brews {
    return brewCollection.snapshots().map(_brewListFromSnapshot);
  }
}
