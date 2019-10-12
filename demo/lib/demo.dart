import 'package:demo/prefs.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class DemoServices {
  static DemoServices get(BuildContext context, {bool listen = false}) =>
      Provider.of<DemoServices>(context, listen: listen);

  Prefs prefs;

  DemoInterface interface;

  DemoServices({@required this.interface, @required PrefsInterface prefs}) {
    this.prefs = Prefs(prefs);
  }
}

abstract class DemoInterface {
  launch(String url);
}


