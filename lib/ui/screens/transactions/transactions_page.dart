import 'package:flutter/material.dart';
import 'package:mtei/ui/core/app_scaffold.dart';
import 'package:mtei/ui/core/app_drawer.dart';

class TransactionsPage extends StatefulWidget {
  final String title = 'Transactions';
  @override
  _TransactionsPageState createState() => _TransactionsPageState();
}

class _TransactionsPageState extends State<TransactionsPage> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: Text(widget.title),
      drawer: AppDrawer(),
      body: Center(
        child: Text(widget.title),
      ),
    );
  }
}
