import 'package:flutter/material.dart';
import 'package:payR/pages/dashboard/dashboard_pay_bill_sec.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../widgets/custom_appbar.dart';
import '../../widgets/app_bar_btn.dart';
import '../../widgets/body_container.dart';
import './dashboard_pay_history_section.dart';

class DashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomAppBar(
        appBarButton: AppBarButton(
          btnText: 'Logout',
          btnFunction: () async {
            SharedPreferences pref = await SharedPreferences.getInstance();
            pref.remove('token');
            Navigator.pushNamed(context, '/');
          },
        ),
      ),
      body: BodyContainer(
        height: size.height,
        width: size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BillPaySection(
              height: size.height,
              width: size.width,
            ),
            SizedBox(
              width: 20,
            ),
            BillHistory(
              height: size.height,
              width: size.width,
            ),
          ],
        ),
      ),
    );
  }
}
