import 'package:flutter/material.dart';
import '../../widgets/custom_appbar.dart';
import '../../widgets/body_container.dart';
import './signup_form.dart';

class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomAppBar(),
      body: BodyContainer(
        height: size.height,
        width: size.width,
        child: SignUpForm(
          height: size.height,
          width: size.width,
        ),
      ),
    );
  }
}
