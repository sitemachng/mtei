import 'package:mtei/ui/core/ui_config.dart';
import 'package:flutter/material.dart';
import 'package:mtei/ui/core/styles.dart';

class WalletActionText extends StatelessWidget {
  const WalletActionText({
    @required this.onTap,
    @required this.title,
    @required this.icon,
    Key key,
  }) : super(key: key);

  final Function onTap;
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            child: Icon(
              icon,
              color: Colors.white,
            ),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Color(0xFF7a3eec), //Color(0xFFfb774e),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: kHeadingText3,
          )
        ],
      ),
    );
  }
}
