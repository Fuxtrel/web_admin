import 'package:flutter/material.dart';
import 'package:web_admin/pages/error_page/error_page_view.dart';
import 'package:web_admin/pages/router.dart';
import 'package:web_admin/pages/welcome_page/welcome_view.dart';

void main() {
  runApp(
    MaterialApp(
      home: WelcomePage(),
      routes: <String, WidgetBuilder>{
        Pages.welcomePage.routeName: (BuildContext context) => WelcomePage(),
        Pages.errorPage.routeName: (BuildContext context) => const ErrorPage(),
        // '/admin/dataTable': (BuildContext context) => pages.pages
      },
    ),
  );
}
