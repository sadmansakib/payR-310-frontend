import 'package:flutter/material.dart';
import 'package:payR/api/apihandler.dart';
import 'package:payR/models/bills.dart';

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
          Expanded(child: BillHistoryTable()),
        ],
      ),
    );
  }
}

class BillHistoryTable extends StatefulWidget {
  const BillHistoryTable({
    Key key,
  }) : super(key: key);

  @override
  _BillHistoryTableState createState() => _BillHistoryTableState();
}

class _BillHistoryTableState extends State<BillHistoryTable> {
  Future<List<Bill>> _bills;

  @override
  void initState() {
    _bills = APIHandler.getBillsOfaCustomer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Bill>>(
      future: _bills,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<Bill> data = snapshot.data;
          return DataTable(
            columns: <DataColumn>[
              DataColumn(
                label: Text(
                  'Bill Date',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              DataColumn(
                label: Text(
                  'Bill Amount',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              DataColumn(
                label: Text(
                  'PaymentMethod',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
            rows: List<DataRow>.from(
              data.map(
                (e) => DataRow(
                  cells: [
                    DataCell(
                      Text("${e.submitDate}"),
                    ),
                    DataCell(
                      Text("${e.amount}"),
                    ),
                    DataCell(
                      Text("${e.paymentMethod}"),
                    ),
                  ],
                ),
              ),
            ),
          );
        } else if (snapshot.hasError) {
          return DataTable(columns: [
            DataColumn(
              label: Text(
                'Bill Date',
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            DataColumn(
              label: Text(
                'Bill Amount',
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            DataColumn(
              label: Text(
                'PaymentMethod',
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ], rows: []);
        } else {
          return CircularProgressIndicator();
        }
      },
    );
  }
}
