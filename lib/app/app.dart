import 'package:flutter/material.dart';

import '../personal_website/view/personal_website_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Japhet Obsioma',
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData.dark(),
      home: const PersonalWebsitePage(),
    );
  }
}
