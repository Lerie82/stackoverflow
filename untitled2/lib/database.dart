import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'stuff.dart';

class DatabaseService {
  final String? uid;
  DatabaseService({this.uid});

  //collection reference
  final CollectionReference stuffCollection =
      FirebaseFirestore.instance.collection('stuffs');

//stufflist from snapshot
  List<Stuff> _stuffListFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return Stuff(
        title: doc.get('title') ?? '0',
        price: doc.get('price') ?? '0',
        details: doc.get('details') ?? '0',
      );
    }).toList();
  }

//get the stuffs
  Stream<List<Stuff>> get stuffs {
    return stuffCollection.snapshots().map(_stuffListFromSnapshot);
  }
}
