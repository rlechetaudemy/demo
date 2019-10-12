import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class DemoServices {
  static DemoServices get(BuildContext context, {bool listen = false}) =>
      Provider.of<DemoServices>(context, listen: listen);

  DemoInterface interface;

  DemoServices({@required this.interface});
}

abstract class DemoInterface {
  launch(String url);
}
