import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreHelper {
  Firestore firestoreInstance = Firestore.instance;

  Future<bool> getUser({String username, String password}) async {
    return await firestoreInstance
        .collection('user')
        .getDocuments()
        .then((querySnapshot) {
      querySnapshot.documents.forEach((snapshot) {
        print('${snapshot.data}');
        print(
            'username: $username , ${snapshot.data['username']}. password: $password , ${snapshot.data['password']}. ');
        if (snapshot.data['username'].toString() == username &&
            snapshot.data['password'].toString() == password) return true;
      });
      print('false');
      return false;
    });
  }
}
