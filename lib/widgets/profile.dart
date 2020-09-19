import 'dart:developer';

import 'package:flutter/material.dart';
import '../models/customer.dart';
import '../api/apihandler.dart';

class ProfileInfo extends StatefulWidget {
  @override
  _ProfileInfoState createState() => _ProfileInfoState();
}

class _ProfileInfoState extends State<ProfileInfo> {
  Future<Customer> customer;

  @override
  void initState() {
    customer = APIHandler.getCustomerInfo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: customer,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Column(
            children: [
              Text(
                "${snapshot.data.firstName} ${snapshot.data.lastName}",
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '${snapshot.data.email}',
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '${snapshot.data.mobile}',
              )
            ],
          );
        } else if (snapshot.hasError) {
          log(snapshot.error.toString());
          return Container();
        } else {
          return CircularProgressIndicator();
        }
      },
    );
  }
}
