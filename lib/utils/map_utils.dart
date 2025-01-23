import 'package:url_launcher/url_launcher.dart';

class MapUtils {
  static Future<void> openMap(String location) async {
    String googleUrl = 'https://www.google.com/maps/search/$location';
    Uri url = Uri.parse(googleUrl);
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
}
