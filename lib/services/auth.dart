import "package:firebase_auth/firebase_auth.dart";
import 'package:my_app/models/user.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  User _convertFirebaseUser(FirebaseUser user) {
    return user != null ? User(uid: user.uid) : null;
  }

  Future signInAnon() async {
    try {
      AuthResult result = await _auth.signInAnonymously();
      FirebaseUser user = result.user;
      return _convertFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
