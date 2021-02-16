import 'package:flutter/material.dart';
import 'package:mtei/ui/core/app_scaffold.dart';
import 'package:mtei/ui/core/styles.dart';
import 'package:mtei/helpers/size_config.dart';

class CardDetailPage extends StatefulWidget {
  final String title = 'Card Detail';
  @override
  _CardDetailPageState createState() => _CardDetailPageState();
}

class _CardDetailPageState extends State<CardDetailPage> {
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
            Text(
              'Visa',
              style: kBodyText1,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text('Card Number', style: kBodyText4),
            Text('**** **** **** 1968', style: kBodyText1),
            SizedBox(
              height: 10.0,
            ),
            Text('Expiry Date', style: kBodyText4),
            Text('01/2029', style: kBodyText1),
            SizedBox(
              height: 30.0,
            ),
            ButtonTheme(
              minWidth: SizeConfig.blockSizeHorizontal * 100,
              height: 48,
              child: RaisedButton(
                color: kPrimaryColor,
                disabledColor: kPrimaryBorder,
                child:
                    Text('Set card as default', style: kSolidButtonTextStyle),
                onPressed: () {},
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            FlatButton(
              child: Text(
                'Delete card',
                style: kBodyText3.copyWith(color: kFailureColor),
              ),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
