import 'package:flutter/material.dart';

class AppBarButton extends StatelessWidget {
  final String btnText;
  final Function btnFunction;

  AppBarButton({@required this.btnText, @required this.btnFunction});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: FlatButton(
        color: Colors.red,
        padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 25.0),
        onPressed: btnFunction,
        child: Text(
          btnText.toUpperCase(),
          style: TextStyle(
            color: Colors.white,
            fontSize: 14.5,
          ),
        ),
      ),
    );
  }
}
