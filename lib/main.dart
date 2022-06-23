import 'package:flutter/material.dart';
import 'package:web_admin/pages/error_page/error_page_view.dart';
import 'package:web_admin/pages/welcome_page/welcome_view.dart';

void main() {
  runApp(
    MaterialApp(
      home: const WelcomePage(),
      routes: <String, WidgetBuilder>{
        '/welcome': (BuildContext context) => const WelcomePage(),
        // '/home': (BuildContext context) => MyPage(title: 'page B'),
        '/error': (BuildContext context) => const ErrorPage(),
      },
    ),
  );
}
