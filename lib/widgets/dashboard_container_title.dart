import 'package:flutter/material.dart';

class DashBoardTitle extends StatelessWidget {
  final String text;

  DashBoardTitle({@required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 15.0,
      ),
      child: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35.0),
      ),
    );
  }
}
