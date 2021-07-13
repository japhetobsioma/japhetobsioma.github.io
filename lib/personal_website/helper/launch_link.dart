import 'package:flutter/gestures.dart';
import 'package:url_launcher/url_launcher.dart';

GestureRecognizer launchLink(String url) {
  return TapGestureRecognizer()
    ..onTap = () async {
      if (await canLaunch(url)) await launch(url);
    };
}
