import 'package:flutter/material.dart';
import 'package:mtei/ui/core/app_scaffold.dart';
import 'package:mtei/ui/core/styles.dart';
import 'package:mtei/helpers/size_config.dart';
import 'package:mtei/ui/screens/send_money/payment_method_page.dart';

class ConfirmPayment extends StatefulWidget {
  ConfirmPayment({Key key}) : super(key: key);

  @override
  _ConfirmPaymentState createState() => _ConfirmPaymentState();
}

class _ConfirmPaymentState extends State<ConfirmPayment> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return AppScaffold(
      title: Text('Confirm Payment'),
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
      body: SingleChildScrollView(
        child: Container(
          height: SizeConfig.screenHeight - 200,
          padding:
              EdgeInsets.only(left: 15.0, right: 15.0, top: 20.0, bottom: 20.0),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Pay with',
                  style: kHeadingText3,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 1, color: Colors.grey[200]),
                    borderRadius: BorderRadius.circular(5.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[200],
                        blurRadius:
                            5.0, // has the effect of softening the shadow
                        spreadRadius:
                            2.0, // has the effect of extending the shadow
                        offset: Offset(
                          5.0, // horizontal, move right 10
                          5.0, // vertical, move down 10
                        ),
                      )
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.money,
                        size: 24.0,
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Mtei wallet',
                                style: kHeadingText3,
                              ),
                              RichText(
                                text: TextSpan(
                                  text: 'Balance: ',
                                  style: kBodyText4,
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: '₦25,000',
                                      style: kBodyText3.copyWith(
                                          fontFamily: 'Arial',
                                          color: kPrimaryColor),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PaymentMethod()),
                          );
                        },
                        child: Row(
                          children: [
                            Text('Change this?',
                                style: kBodyText4.copyWith(
                                    color: kPrimaryColor, fontSize: 10.0)),
                            Icon(
                              Icons.chevron_right,
                              color: Colors.grey[500],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 20.0),
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    decoration: BoxDecoration(
                      color: Color(0xFFf5f2fb),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            text: 'You\'re about to send ',
                            style: kBodyText2,
                            children: <TextSpan>[
                              TextSpan(
                                text: '₦${10000}',
                                style:
                                    kHeadingText2.copyWith(fontFamily: 'Arial'),
                              ),
                              TextSpan(
                                text: ' to ',
                                style: kBodyText2,
                              ),
                              TextSpan(
                                text:
                                    'Ahmed Olayinka Olanrewaju (Stanbic IBTC - 0021508799)',
                                style: kHeadingText2,
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 15.0),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                width: 1.0,
                                color: Colors.grey[400],
                              ),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Save this payment?',
                                style: kBodyText3,
                              ),
                              Switch(
                                value: false,
                                onChanged: (value) {
                                  // setState(() {
                                  //   savePayment = value;
                                  // });
                                },
                                activeTrackColor: Color(0xFF6b37cc),
                                activeColor: kPrimaryColor,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 15.0),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                width: 1.0,
                                color: Colors.grey[400],
                              ),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Service fee',
                                style: kBodyText3,
                              ),
                              Text(
                                'Free',
                                style: kHeadingText3,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Total amount',
                                style: kBodyText3,
                              ),
                              Text(
                                '₦10,000',
                                style:
                                    kHeadingText3.copyWith(fontFamily: 'Arial'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                ButtonTheme(
                  minWidth: SizeConfig.blockSizeHorizontal * 100,
                  height: 48,
                  child: RaisedButton(
                    color: kPrimaryColor,
                    disabledColor: kPrimaryBorder,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.lock,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          'Securely pay ₦10,000',
                          style: kSolidButtonTextStyle.copyWith(
                            fontFamily: 'Arial',
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
