import 'package:flutter/material.dart';
import 'package:mtei/ui/core/styles.dart';

class Indicator extends StatelessWidget {
  Indicator({this.active});
  final bool active;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20.0,
      height: 5.0,
      margin: EdgeInsets.symmetric(horizontal: 3.0),
      decoration: BoxDecoration(
        color: active ? kPrimaryColor : Color.fromRGBO(158, 158, 158, 0.52),
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
