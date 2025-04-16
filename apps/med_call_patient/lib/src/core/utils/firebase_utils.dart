import 'package:firebase_auth/firebase_auth.dart';

class FirebaseUtils {
  static final FirebaseAuth auth = FirebaseAuth.instance;

  static User? get currentUser => auth.currentUser;

  static Future<void> signOut() async {
    await auth.signOut();
  }

  static Stream<User?> get authStateChanges => auth.authStateChanges();
}

/// Вызывается при запуске приложения (если нужно что-то инициализировать)
Future<void> initFirebaseUtils() async {
  // Пока ничего, можно добавить позже, если появится логика
}