import 'package:flutter/material.dart';
import 'package:mtei/ui/core/app_scaffold.dart';
import 'package:mtei/ui/core/app_drawer.dart';
import 'package:mtei/ui/core/app_title.dart';


class BillPaymentPage extends StatefulWidget {
  final String title = 'Bill Payment';
  @override
  _BillPaymentPageState createState() => _BillPaymentPageState();
}

class _BillPaymentPageState extends State<BillPaymentPage> {


  @override
  Widget build(BuildContext context) {

    return AppScaffold(
        title: AppTitle(innerApp: true),
        drawer: AppDrawer(),
        body: Center(
          child: Text(widget.title),
        ),
        fab: FloatingActionButton(
          onPressed: () {

          },
          tooltip: 'Make Payment',
          child: Icon(Icons.add),
          elevation: 2.0,
        ),
    );
  }

}
