import 'package:flutter/material.dart';

import '../../widgets/dashboard_container_title.dart';

class BillHistory extends StatelessWidget {
  final double height;
  final double width;

  BillHistory({this.height, this.width});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      width: 0.6 * width,
      height: 0.85 * height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          DashBoardTitle(text: 'Payment History'),
          SizedBox(
            height: 40,
          ),
          DataTable(columns: const <DataColumn>[
            DataColumn(
              label: Text(
                'Bill Date',
                style: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            DataColumn(
              label: Text(
                'Bill Amount',
                style: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            DataColumn(
              label: Text(
                'PaymentMethod',
                style: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ], rows: [])
        ],
      ),
    );
  }
}
