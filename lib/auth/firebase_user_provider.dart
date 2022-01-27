import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class JanzetoCakeFirebaseUser {
  JanzetoCakeFirebaseUser(this.user);
  final User user;
  bool get loggedIn => user != null;
}

JanzetoCakeFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<JanzetoCakeFirebaseUser> janzetoCakeFirebaseUserStream() => FirebaseAuth
    .instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<JanzetoCakeFirebaseUser>(
        (user) => currentUser = JanzetoCakeFirebaseUser(user));
