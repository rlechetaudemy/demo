import 'dart:async';
import 'dart:html' as html;

import 'package:demo/prefs.dart';
import 'package:key_value_store_web/key_value_store_web.dart';

class WebPrefs implements PrefsInterface {
   WebKeyValueStore get prefs =>
      WebKeyValueStore(html.window.localStorage);

   void setBool(String key, bool b) {
    prefs.setBool(key, b);
  }

   void setInt(String key, int i) {
    prefs.setInt(key, i);
  }

   void setString(String key, String s) {
    prefs.setString(key, s);
  }

   FutureOr<bool> getBool(String key) async {
    String s = prefs.getString(key);
    if (s != null) {
      return s == "true";
    }
    return false;
  }

   FutureOr<int> getInt(String key) async {
    String s = prefs.getString(key);
    if (s != null) {
      return int.parse(s);
    }
    return 0;
  }

   FutureOr<String> getString(String key) async {
    return prefs.getString(key) ?? "";
  }
}