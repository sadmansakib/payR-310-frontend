import 'package:flutter/material.dart';
import './pages/landing.dart';
import './pages/login.dart';

void main() {
  runApp(PayR());
}

class PayR extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PayR',
      initialRoute: '/',
      routes: {
        '/': (context) => Landing(),
        '/login': (context) => Login(),
      },
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'KumbhSans',
      ),
    );
  }
}
