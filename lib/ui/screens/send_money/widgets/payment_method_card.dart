import 'package:flutter/material.dart';
import 'package:mtei/ui/core/styles.dart';

class PaymentMethodCard extends StatelessWidget {
  const PaymentMethodCard({
    @required this.cardTitle,
    @required this.isWallet,
    @required this.imagePath,
    this.cardInfo,
    @required this.onPressed,
    Key key,
  }) : super(key: key);

  final String cardTitle;
  final bool isWallet;
  final String cardInfo;
  final String imagePath;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.all(15),
        height: 80.0,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: 1, color: Colors.grey[200]),
          borderRadius: BorderRadius.circular(5.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey[200],
              blurRadius: 5.0, // has the effect of softening the shadow
              spreadRadius: 2.0, // has the effect of extending the shadow
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
            Image(
              image: AssetImage(imagePath),
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      cardTitle,
                      style: kHeadingText3,
                    ),
                    isWallet
                        ? (cardInfo == null
                            ? Container()
                            : RichText(
                                text: TextSpan(
                                  text: 'Balance: ',
                                  style: kBodyText4,
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: '₦$cardInfo',
                                      style: kBodyText3.copyWith(
                                          fontFamily: 'Arial',
                                          color: kPrimaryColor),
                                    ),
                                  ],
                                ),
                              ))
                        : cardInfo == null
                            ? Container()
                            : Text(
                                cardInfo,
                                style: kBodyText4,
                              ),
                  ],
                ),
              ),
            ),
            Icon(
              Icons.chevron_right,
              color: Colors.grey[500],
            ),
          ],
        ),
      ),
    );
  }
}
