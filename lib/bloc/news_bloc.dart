import 'package:cloud_firestore/cloud_firestore.dart';

class NewsBloc {
  final _db = Firestore.instance;

  Stream<QuerySnapshot> streamNews() {
    return _db.collection('news').snapshots();
  }
}

NewsBloc newsBLoc = NewsBloc();
