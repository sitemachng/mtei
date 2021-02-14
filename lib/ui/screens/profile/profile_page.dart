import 'package:flutter/material.dart';
import 'package:mtei/ui/core/app_scaffold.dart';
import 'package:mtei/ui/core/app_drawer.dart';
import 'package:mtei/ui/core/app_title.dart';


class ProfilePage extends StatefulWidget {
  final String title = 'Profile';
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {


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