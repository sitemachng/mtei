import 'package:mtei/ui/core/ui_config.dart';
import 'package:flutter/material.dart';
import 'package:mtei/ui/core/styles.dart';

class HeaderText extends StatelessWidget {
  const HeaderText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.topCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image(
                  image: AssetImage('assets/images/logo_cube.png'),
                  height: 32.0,
                  width: 32.0,
                ),
                Text(
                  UIConfig.app_name,
                  style: kHeadingTextStyle,
                ),
              ],
            ),
            GestureDetector(
              child: Text(
                'Explore',
                style: kBodyTextLinkStyle.copyWith(color: kAppBlue),
              ),
              onTap: () {},
            ),
          ],
        ));
  }
}
