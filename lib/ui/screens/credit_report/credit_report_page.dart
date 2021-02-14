import 'package:flutter/material.dart';
import 'package:mtei/ui/core/app_scaffold.dart';
import 'package:mtei/ui/core/app_drawer.dart';
import 'package:mtei/ui/core/app_title.dart';


class CreditReportPage extends StatefulWidget {
  final String title = 'Credit Report';
  @override
  _CreditReportPageState createState() => _CreditReportPageState();
}

class _CreditReportPageState extends State<CreditReportPage> {


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
