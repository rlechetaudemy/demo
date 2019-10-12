import 'dart:async';
import 'package:demo/demo.dart';

abstract class PrefsInterface {
  void setBool(String key, bool b) ;

  void setInt(String key, int i);

  void setString(String key, String s);

  FutureOr<bool> getBool(String key);

  FutureOr<int> getInt(String key);

  FutureOr<String> getString(String key);
}

class Prefs {

  static get(context) => DemoServices.get(context).prefs;

  PrefsInterface prefs;

  Prefs(this.prefs);

  void setBool(String key, bool b) {
    prefs.setBool(key, b);
  }

  void setInt(String key, int i) {
    prefs.setInt(key, i);
  }

  void setString(String key, String s) {
    prefs.setString(key, s);
  }

  FutureOr<bool> getBool(String key) {
    return prefs.getBool(key);
  }

  FutureOr<int> getInt(String key) {
    return prefs.getInt(key);
  }

  FutureOr getString(String key) {
    return prefs.getString(key) ?? "";
  }
}