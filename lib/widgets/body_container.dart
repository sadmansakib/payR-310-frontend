import 'package:flutter/material.dart';

class BodyContainer extends StatelessWidget {
  final Widget child;
  final double height;
  final double width;

  BodyContainer({
    @required this.height,
    @required this.width,
    @required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/Shahbazpur.png'),
          colorFilter: ColorFilter.mode(
            Colors.blueGrey[700].withOpacity(0.5),
            BlendMode.darken,
          ),
        ),
      ),
      child: child,
    );
  }
}
