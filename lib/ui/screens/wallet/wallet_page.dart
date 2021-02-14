import 'package:flutter/material.dart';
import 'package:mtei/ui/core/app_scaffold.dart';
import 'package:mtei/ui/core/app_drawer.dart';
import 'package:mtei/ui/core/app_title.dart';

class WalletPage extends StatefulWidget {
  final String title = 'Wallet';
  @override
  _WalletPageState createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: Text(widget.title),
      drawer: AppDrawer(),
      body: Center(
        child: Text(widget.title),
      ),
      fab: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Make Payment',
        child: Icon(Icons.add),
        elevation: 2.0,
      ),
    );
  }
}
