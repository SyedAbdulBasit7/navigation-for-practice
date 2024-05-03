import 'package:shared_preferences/shared_preferences.dart';

class PreferenceUtils {
  // Save Methods
  static Future<bool> saveString(String key, String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.setString(key, value);
  }

  static Future<bool> saveInt(String key, int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.setInt(key, value);
  }

  static Future<bool> saveDouble(String key, double value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.setDouble(key, value);
  }

  static Future<bool> saveBool(String key, bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.setBool(key, value);
  }

  static Future<bool> saveStringList(String key, List<String> value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.setStringList(key, value);
  }

  // Get Methods
  static Future<String> getString(String key, {String? defaultValue}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(key) ?? defaultValue!;
  }

  static Future<int> getInt(String key, {int? defaultValue}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getInt(key) ?? defaultValue!;
  }

  static Future<double> getDouble(String key, {double? defaultValue}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getDouble(key) ?? defaultValue!;
  }

  static Future<bool> getBool(String key, {bool? defaultValue}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(key) ?? defaultValue!;
  }

  static Future<List<String>> getStringList(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getStringList(key) ?? [];
  }

  // Other Methods
  static Future<bool> contains(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.containsKey(key);
  }

  static Future<bool> remove(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.containsKey(key)) {
      return await prefs.remove(key);
    }
    return false;
  }

  static Future<bool> clearAll() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.clear();
  }

}
