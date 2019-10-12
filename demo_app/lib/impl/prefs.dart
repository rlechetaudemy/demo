import 'dart:async';

import 'package:demo/prefs.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppPrefs implements PrefsInterface {
  Future<SharedPreferences> get sharedPrefs => SharedPreferences.getInstance();

  void setBool(String key, bool b) async {
    final prefs = await sharedPrefs;
    prefs.setBool(key, b);
  }

  void setInt(String key, int i) async {
    final prefs = await sharedPrefs;
    prefs.setInt(key, i);
  }

  void setString(String key, String s) async {
    final prefs = await sharedPrefs;
    prefs.setString(key, s);
  }

  FutureOr<bool> getBool(String key) async {
    final prefs = await sharedPrefs;
    bool b = prefs.getBool(key);
    return b ?? false;
  }

  FutureOr<int> getInt(String key) async {
    final prefs = await sharedPrefs;
    int i = prefs.getInt(key);
    return i ?? 0;
  }

  FutureOr<String> getString(String key) async {
    final prefs = await sharedPrefs;
    return prefs.getString(key) ?? "";
  }
}
