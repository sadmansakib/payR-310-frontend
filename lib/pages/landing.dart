import 'package:flutter/material.dart';

import '../widgets/custom_appbar.dart';
import '../widgets/landing_body.dart';
import '../widgets/app_bar_btn.dart';
import '../widgets/body_container.dart';

class Landing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomAppBar(
        appBarButton: AppBarButton(
            btnText: 'login',
            btnFunction: () {
              Navigator.pushNamed(context, '/login');
            }),
      ),
      body: BodyContainer(
        height: size.height,
        width: size.width,
        child: Column(
          children: [
            Spacer(),
            Body(),
            Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
