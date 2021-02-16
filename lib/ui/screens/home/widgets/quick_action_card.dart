import 'package:flutter/material.dart';
import 'package:mtei/helpers/size_config.dart';
import 'package:mtei/ui/core/styles.dart';

class QuickActionCard extends StatelessWidget {
  QuickActionCard(
      {@required this.title,
      @required this.description,
      @required this.imagePath,
      @required this.onTap});

  final String title;
  final String description;
  final String imagePath;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(kAppPadding),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: kTenarycolor,
        ),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: kHeadingText2.copyWith(color: kSecondaryColor),
                    ),
                    Text(
                      description,
                      style: kBodyText4,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              width: SizeConfig.blockSizeHorizontal * 1.0,
            ),
            Expanded(
              flex: 1,
              child: Container(
                child: Image(
                  image: AssetImage(imagePath),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
