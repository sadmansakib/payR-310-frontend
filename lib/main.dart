import 'package:flutter/material.dart';
import 'package:payR/pages/dashboard/dashboard.dart';
import './pages/signup.dart';
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
        '/signup': (context) => Signup(),
        '/dashboard': (context) => DashBoard()
      },
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'KumbhSans',
      ),
    );
  }
}
