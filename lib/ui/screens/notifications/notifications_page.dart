import 'package:flutter/material.dart';
import 'package:mtei/ui/core/app_scaffold.dart';
import 'package:mtei/ui/core/app_drawer.dart';
import 'package:mtei/ui/core/app_title.dart';


class NotificationsPage extends StatefulWidget {
  final String title = 'Notifications';
  @override
  _NotificationsPageState createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {


  @override
  Widget build(BuildContext context) {

    return AppScaffold(
        title: Text(widget.title),
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
