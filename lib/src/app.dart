import 'package:demo0/src/pages/app_routes.dart';
import 'package:demo0/src/pages/login/login_page.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: AppRoute.all,
      home: LoginPage(),
    );
  }
}