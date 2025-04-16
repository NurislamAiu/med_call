import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsHelper {
  static late SharedPreferences _prefs;

  static Future<void> init(SharedPreferences prefs) async {
    _prefs = prefs;
  }

  static String? get token => _prefs.getString('token');

  static Future<void> setToken(String value) async {
    await _prefs.setString('token', value);
  }

  static Future<void> clear() async {
    await _prefs.clear();
  }
}