import 'package:flutter/material.dart';
import 'package:mtei/ui/core/app_scaffold.dart';
import 'package:mtei/ui/core/styles.dart';
import 'package:mtei/ui/screens/send_money/widgets/payment_method_card.dart';
import 'package:mtei/ui/screens/manage_cards/card_detail_page.dart';
import 'package:mtei/ui/screens/manage_cards/add_card_page.dart';

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
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: kPrimaryTextColor,
          size: 32,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      body: Container(
        padding:
            EdgeInsets.only(left: 15.0, right: 15.0, top: 20.0, bottom: 20.0),
        child: ListView(
          children: [
            SizedBox(
              height: 20.0,
            ),
            PaymentMethodCard(
              cardTitle: '419227****1968',
              cardInfo: 'Visa',
              imagePath: 'assets/images/visa.png',
              isWallet: false,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CardDetailPage()),
                );
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            PaymentMethodCard(
              cardTitle: '419227****1968',
              cardInfo: 'Mastercard',
              imagePath: 'assets/images/mastercard.png',
              isWallet: false,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CardDetailPage()),
                );
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            PaymentMethodCard(
              cardTitle: 'Add a new debit/ATM card',
              imagePath: 'assets/images/add-card.png',
              isWallet: false,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddCardPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
