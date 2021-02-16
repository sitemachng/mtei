import 'package:flutter/material.dart';
import 'package:mtei/ui/core/app_scaffold.dart';
import 'package:mtei/ui/core/styles.dart';
import 'package:mtei/helpers/size_config.dart';
import 'package:mtei/ui/screens/send_money/widgets/payment_method_card.dart';

class PaymentMethod extends StatefulWidget {
  PaymentMethod({Key key}) : super(key: key);

  @override
  _PaymentMethodState createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return AppScaffold(
      title: Text('Choose payment method'),
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
            Container(
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(width: 2, color: Colors.grey[100]))),
              padding: EdgeInsets.symmetric(vertical: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'DEFAULT',
                    style: kHeadingText3,
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'Service fee: ',
                      style: kBodyText4,
                      children: <TextSpan>[
                        TextSpan(
                          text: 'FREE',
                          style: kBodyText3.copyWith(
                              fontFamily: 'Arial', color: kPrimaryColor),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            PaymentMethodCard(
              cardTitle: 'Mtei Wallet',
              cardInfo: '330.34',
              imagePath: 'assets/images/wallet.png',
              isWallet: true,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(
              height: 50.0,
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(width: 2, color: Colors.grey[100]))),
              padding: EdgeInsets.symmetric(vertical: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'DEBIT CARD',
                    style: kHeadingText3,
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'Service fee: ',
                      style: kBodyText4,
                      children: <TextSpan>[
                        TextSpan(
                          text: '₦${50}',
                          style: kBodyText3.copyWith(
                              fontFamily: 'Arial', color: Colors.red),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            PaymentMethodCard(
              cardTitle: '419227****1968',
              cardInfo: 'Visa',
              imagePath: 'assets/images/visa.png',
              isWallet: false,
              onPressed: () {
                
                Navigator.pop(context);
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
                Navigator.pop(context);
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            PaymentMethodCard(
              cardTitle: 'Add a new debit/ATM card',
              imagePath: 'assets/images/add-card.png',
              isWallet: false,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
