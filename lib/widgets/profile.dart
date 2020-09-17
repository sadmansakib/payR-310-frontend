import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Sadman Sakib',
          style: TextStyle(fontSize: 16.0),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          '1234567891',
          style: TextStyle(fontSize: 16.0),
        )
      ],
    );
  }
}
