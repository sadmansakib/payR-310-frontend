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
    super.initState();
    customer = APIHandler.getCustomerInfo();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Column(
            children: [
              Text(
                "${snapshot.data.firstName} ${snapshot.data.lastName}",
                style: TextStyle(fontSize: 14.0),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "${snapshot.data.email}",
                style: TextStyle(fontSize: 14.0),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "${snapshot.data.mobile}",
                style: TextStyle(fontSize: 14.0),
              ),
            ],
          );
        } else if (snapshot.hasError) {
          return Container();
        } else {
          return CircularProgressIndicator();
        }
      },
      future: customer,
    );
  }
}
