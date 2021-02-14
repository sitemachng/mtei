import 'package:flutter/material.dart';
import 'package:mtei/ui/router/router.gr.dart';

class DrawerMenu {
  String menuRoute;
  String menuName;
  IconData menuIcon;
  bool isBodyView;

  DrawerMenu({this.menuRoute, this.menuName, this.menuIcon, this.isBodyView});

  List<DrawerMenu> _menuList = [];
  List<DrawerMenu> get menuList => _menuList;

  initialize() {
    _menuList = <DrawerMenu>[
      DrawerMenu(
        menuRoute: Routes.homePage,
        menuName: 'Home',
        menuIcon: Icons.home,
        isBodyView: true,
      ),
      DrawerMenu(
        menuRoute: Routes.loanPage,
        menuName: 'Apply For Loan',
        menuIcon: Icons.money,
        isBodyView: false,
      ),
      DrawerMenu(
        menuRoute: Routes.creditReportPage,
        menuName: 'Free Credit Report',
        menuIcon: Icons.bar_chart,
        isBodyView: false,
      ),
      DrawerMenu(
        menuRoute: Routes.sendMoneyPage,
        menuName: 'Send Money',
        menuIcon: Icons.attach_money,
        isBodyView: false,
      ),
      DrawerMenu(
        menuRoute: Routes.billPaymentPage,
        menuName: 'Bill Payment',
        menuIcon: Icons.payment,
        isBodyView: false,
      ),
      DrawerMenu(
        menuRoute: Routes.manageCardsPage,
        menuName: 'Manage Card',
        menuIcon: Icons.card_giftcard,
        isBodyView: false,
      ),
      DrawerMenu(
        menuRoute: Routes.notificationsPage,
        menuName: 'Notifications',
        menuIcon: Icons.notification_important,
        isBodyView: false,
      )
    ];
  }
}
