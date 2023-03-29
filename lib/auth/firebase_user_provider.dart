import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class WhatsappFirebaseUser {
  WhatsappFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

WhatsappFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<WhatsappFirebaseUser> whatsappFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<WhatsappFirebaseUser>(
      (user) {
        currentUser = WhatsappFirebaseUser(user);
        return currentUser!;
      },
    );
