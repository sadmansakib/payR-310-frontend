import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            "Skip the lines",
            style: Theme.of(context).textTheme.headline2.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                ),
          ),
          Text(
            "Skip the Procedures",
            style: Theme.of(context).textTheme.headline2.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                ),
          ),
          Text(
            "An easy way to pay your gas bills",
            style: Theme.of(context).textTheme.headline2.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                ),
          ),
        ],
      ),
    );
  }
}
