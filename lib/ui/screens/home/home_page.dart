import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:auto_route/auto_route.dart';
import 'package:mtei/ui/router/router.gr.dart';
import 'package:mtei/ui/core/app_scaffold.dart';
import 'package:mtei/ui/core/app_drawer.dart';
import 'package:mtei/providers/navigation_provider.dart';
import 'package:provider/provider.dart';
import 'package:mtei/ui/core/styles.dart';
import 'package:mtei/helpers/size_config.dart';
import 'package:mtei/ui/screens/home/widgets/wallet_action_text.dart';
import 'package:mtei/ui/screens/home/widgets/quick_action_card.dart';

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
    Size size = MediaQuery.of(context).size;
    SizeConfig().init(context);

    return WillPopScope(
      onWillPop: _systemBackButtonPressed,
      child: AppScaffold(
        title: Text('Welcome'),
        drawer: AppDrawer(),
        body: Container(
          child: ListView(
            children: [
              SizedBox(
                height: 15,
              ),
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 2.0,
                      color: Color(0xFFf9f9f9),
                    ),
                  ),
                ),
                child: Column(
                  children: [
                    Text('Need cash instanty?'),
                    SizedBox(
                      height: 10.0,
                    ),
                    ButtonTheme(
                      minWidth: size.width - 50,
                      child: RaisedButton(
                        color: kPrimaryColor,
                        child: Text(
                          'Apply for a loan',
                          style: kSolidButtonTextStyle,
                        ),
                        onPressed: () {
                          ExtendedNavigator.of(context).push(Routes.loanPage);
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(15),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Color(0xFFf5f2fb),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('YOUR WALLET'),
                        Text('FEB 14, 2021'),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      'Wallet balance',
                      style:
                          kHeadingText3.copyWith(fontWeight: FontWeight.normal),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'N33.34',
                      style: kHeadingText1,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        WalletActionText(
                          title: 'Withdraw',
                          icon: Icons.money,
                          onTap: () {
                            ExtendedNavigator.root
                                .push(Routes.walletWithdrawPage);
                          },
                        ),
                        WalletActionText(
                          title: 'Fund Wallet',
                          icon: Icons.attach_money,
                          onTap: () {
                            ExtendedNavigator.root
                                .push(Routes.walletFundPage);
                          },
                        ),
                        WalletActionText(
                          title: 'Transaction',
                          icon: Icons.payment,
                          onTap: () {
                            ExtendedNavigator.root
                                .push(Routes.walletTransactionPage);
                          },
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Quick Actions',
                          style: kHeadingText2,
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.blockSizeVertical * 2.0,
                      ),
                      QuickActionCard(
                        title: 'Manage Card',
                        description:
                            'Easily setup and manage your virtual card with one click. You don’t have to worry about lost data or file, the system is secure',
                        imagePath: 'assets/images/credit-card.png',
                        onTap: () {
                          ExtendedNavigator.root.push(Routes.manageCardsPage);
                        },
                      ),
                      SizedBox(
                        height: SizeConfig.blockSizeVertical * 2.0,
                      ),
                      QuickActionCard(
                        title: 'Credit Report',
                        description:
                            'Access your credit report to determine if you are eligible to apply for loan. This allow us to process your loan within a minute',
                        imagePath: 'assets/images/credit-report.png',
                        onTap: () {
                          ExtendedNavigator.root.push(Routes.creditReportPage);
                        },
                      ),
                    ],
                  ))
            ],
          ),
        ),
        fab: FloatingActionButton(
          onPressed: () {
            ExtendedNavigator.root.push(Routes.billPaymentPage);
          },
          tooltip: 'Make Payment',
          child: Icon(
            Icons.add,
            color: kPrimaryColor,
            size: 32,
          ),
          elevation: 4.0,
        ),
      ),
    );
  }
}
