import 'package:flutter/material.dart';
import 'package:mtei/ui/core/app_scaffold.dart';
import 'package:mtei/ui/core/app_drawer.dart';
import 'package:mtei/ui/core/app_title.dart';

class WalletTransactionPage extends StatefulWidget {
  final String title = 'Wallet History';
  @override
  _WalletTransactionPageState createState() => _WalletTransactionPageState();
}

class _WalletTransactionPageState extends State<WalletTransactionPage> {
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
