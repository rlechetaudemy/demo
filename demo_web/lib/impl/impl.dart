
import 'package:demo/demo.dart';
import 'package:demo_web/web.dart';

class WebInterface implements DemoInterface {
  @override
  launch(String url) {
    launchWeb(url);
  }

}