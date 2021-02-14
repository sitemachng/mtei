import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mtei/ui/core/app_scaffold.dart';
import 'package:mtei/ui/core/app_drawer.dart';
import 'package:mtei/providers/navigation_provider.dart';
import 'package:provider/provider.dart';
import 'package:mtei/ui/core/app_title.dart';

class HomePage extends StatefulWidget {
  final String title = 'Home';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //to handle back button pressed
  Future<bool> _systemBackButtonPressed() {
    SystemChannels.platform.invokeMethod<void>('SystemNavigator.pop');
  }

  @override
  Widget build(BuildContext context) {
    final navigationProvider = Provider.of<NavigationProvider>(context);

    return WillPopScope(
      onWillPop: _systemBackButtonPressed,
      child: AppScaffold(
        title: AppTitle(innerApp: true),
        drawer: AppDrawer(),
        body: Container(
          
        ),
        fab: FloatingActionButton(
          onPressed: () {

          },
          tooltip: 'Make Payment',
          child: Icon(Icons.add),
          elevation: 2.0,
        ),
      ),
    );
  }

}
