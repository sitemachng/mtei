import 'package:flutter/material.dart';
import 'package:mtei/ui/core/app_scaffold.dart';
import 'package:provider/provider.dart';
import 'package:mtei/ui/core/app_drawer.dart';
import 'package:mtei/helpers/size_config.dart';
import 'package:mtei/providers/navigation_provider.dart';
import 'package:mtei/ui/core/styles.dart';
import 'package:mtei/ui/screens/send_money/widgets/send_money_form.dart';

class SendMoneyPage extends StatefulWidget {
  final String title = 'Send Money';
  @override
  _SendMoneyPageState createState() => _SendMoneyPageState();
}

class _SendMoneyPageState extends State<SendMoneyPage>
    with SingleTickerProviderStateMixin {
  TabController _controller;

  List<Widget> list = [
    Tab(
      text: 'Send',
    ),
    Tab(text: 'Saved'),
    Tab(text: 'History'),
  ];

  @override
  void initState() {
    super.initState();
    // Create TabController for getting the index of current tab
    _controller = TabController(
      length: list.length,
      vsync: this,
      initialIndex:
          Provider.of<NavigationProvider>(context, listen: false).tabIndex,
    );

    _controller.addListener(() {
      Provider.of<NavigationProvider>(context, listen: false).tabIndex =
          _controller.index;
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return DefaultTabController(
      length: 3,
      child: AppScaffold(
          title: Text(widget.title),
          tabBar: TabBar(
            labelColor: kSecondaryColor,
            unselectedLabelColor: kTenaryTextColor,
            indicatorColor: kSecondaryColor,
            indicatorWeight: 5.0,
            labelStyle: kBodyText2,
            onTap: (index) {
              Provider.of<NavigationProvider>(context, listen: false).tabIndex =
                  index;
            },
            tabs: list,
          ),
          drawer: AppDrawer(),
          body: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                SizedBox(
                  height: SizeConfig.safeBlockVertical * 1,
                ),
                SizedBox(
                  height: SizeConfig.safeBlockVertical * 1,
                ),
                Expanded(
                  flex: 1,
                  child: TabBarView(
                    children: [
                      SendMoneyForm(),
                      Container(
                        child: Text('Coming soon: Saved'),
                      ),
                      Container(
                        child: Text('Coming soon : History'),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
