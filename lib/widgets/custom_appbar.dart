import 'package:flutter/material.dart';
import 'package:payR/widgets/app_bar_btn.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final AppBarButton appBarButton;

  @override
  final Size preferredSize;

  CustomAppBar({this.appBarButton}) : preferredSize = Size.fromHeight(60.0);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
      decoration: BoxDecoration(
        color: Colors.black,
      ),
      child: Row(
        children: [
          Text(
            'PayR',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30.0,
            ),
          ),
          Spacer(),
          appBarButton,
        ],
      ),
    );
  }
}
