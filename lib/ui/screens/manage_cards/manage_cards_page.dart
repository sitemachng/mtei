import 'package:flutter/material.dart';
import 'package:mtei/ui/core/app_scaffold.dart';
import 'package:mtei/ui/core/app_drawer.dart';
import 'package:mtei/ui/core/app_title.dart';


class ManageCardsPage extends StatefulWidget {
  final String title = 'Manage Cards';
  @override
  _ManageCardsPageState createState() => _ManageCardsPageState();
}

class _ManageCardsPageState extends State<ManageCardsPage> {


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
