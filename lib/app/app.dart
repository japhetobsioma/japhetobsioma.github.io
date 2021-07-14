import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../personal_website/view/personal_website_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (_, __, ___) {
        return MaterialApp(
          title: 'Japhet Obsioma',
          theme: ThemeData.light().copyWith(
            scaffoldBackgroundColor: const Color(0xFF0D1117),
            textTheme: const TextTheme().copyWith(
              bodyText2: const TextStyle(color: Colors.white, fontSize: 24.0),
            ),
          ),
          home: const PersonalWebsitePage(),
        );
      },
    );
  }
}
