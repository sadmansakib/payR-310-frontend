import 'package:flutter/material.dart';

import '../../widgets/dashboard_container_title.dart';
import '../../widgets/profile.dart';

class BillPaySection extends StatelessWidget {
  final double height;
  final double width;

  BillPaySection({this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
      ),
      padding: EdgeInsets.all(10.0),
      width: 0.2 * width,
      height: 0.85 * height,
      child: Column(
        children: [
          DashBoardTitle(text: 'Pay bill'),
          Spacer(
            flex: 1,
          ),
          ProfileInfo(),
          Spacer(
            flex: 3,
          ),
          RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            padding: EdgeInsets.symmetric(
              vertical: 30.0,
              horizontal: 80.0,
            ),
            color: Colors.black,
            onPressed: () {},
            child: Text(
              'Pay Bill'.toUpperCase(),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14.0,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
