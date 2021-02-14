import 'package:flutter/material.dart';
import 'package:mtei/ui/core/app_scaffold.dart';
import 'package:mtei/ui/core/app_drawer.dart';
import 'package:mtei/ui/core/app_title.dart';

class WalletFundPage extends StatefulWidget {
  final String title = 'Fund Wallet';
  @override
  _WalletFundPageState createState() => _WalletFundPageState();
}

class _WalletFundPageState extends State<WalletFundPage> {
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
