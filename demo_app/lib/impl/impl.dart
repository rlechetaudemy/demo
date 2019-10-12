
import 'package:demo/demo.dart';
import 'package:url_launcher/url_launcher.dart' as url_launcher;

class AppInterface implements DemoInterface {
  @override
  launch(String url) {
    url_launcher.launch(url);
  }

}