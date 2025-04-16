import 'package:firebase_core/firebase_core.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../core/service/storage/key_value/shared_prefs_helper.dart';
import '../core/utils/firebase_utils.dart';

Future<void> initializeApp() async {
  // Firebase инициализация
  await Firebase.initializeApp();

  // Shared Preferences
  final prefs = await SharedPreferences.getInstance();
  SharedPrefsHelper.init(prefs);

  // Firebase Auth utils
  await initFirebaseUtils();

}