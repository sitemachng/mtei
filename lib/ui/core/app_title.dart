import 'package:flutter/material.dart';
import 'package:mtei/ui/core/styles.dart';

class AppTitle extends StatelessWidget {
  AppTitle({this.innerApp = false});
  final bool innerApp;
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'Mtei',
        style: innerApp
            ? kHeadingText2.copyWith(color: Colors.white)
            : kHeadingText1.copyWith(color: KAppPurple),
        children: <TextSpan>[
          TextSpan(
            text: 'App',
            style: innerApp
                ? kHeadingText2.copyWith(color: kDeepYellow)
                : kHeadingText1.copyWith(color: kDeepYellow),
          ),
        ],
      ),
    );
  }
}
