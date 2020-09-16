import 'package:flutter/material.dart';

class AppBarButton extends StatelessWidget {
  final String btnText;
  final Function btnFunction;

  AppBarButton({@required this.btnText, @required this.btnFunction});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: Colors.red,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
      onPressed: btnFunction,
      child: Text(
        btnText.toUpperCase(),
        style: TextStyle(
          fontSize: 14.5,
        ),
      ),
    );
  }
}
