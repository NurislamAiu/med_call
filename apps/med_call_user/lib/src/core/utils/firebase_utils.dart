import 'package:firebase_auth/firebase_auth.dart';

class FirebaseUtils {
  static final FirebaseAuth _auth = FirebaseAuth.instance;

  static User? get currentUser => _auth.currentUser;

  static Future<void> signOut() => _auth.signOut();

  static Stream<User?> get authStateChanges => _auth.authStateChanges();

  static String getCurrentUserId() => _auth.currentUser?.uid ?? '';
}