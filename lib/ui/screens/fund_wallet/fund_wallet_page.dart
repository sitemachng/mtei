import 'package:flutter/material.dart';
import 'package:mtei/ui/core/app_scaffold.dart';
import 'package:mtei/ui/core/app_drawer.dart';

class FundWalletPage extends StatefulWidget {
  final String title = 'Fund Wallet';
  @override
  _FundWalletPageState createState() => _FundWalletPageState();
}

class _FundWalletPageState extends State<FundWalletPage> {
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
