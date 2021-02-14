import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mtei/providers/intro_guide_provider.dart';
import 'package:mtei/ui/core/styles.dart';
import 'package:mtei/ui/screens/intro/widgets/header_text.dart';
import 'package:mtei/ui/screens/intro/widgets/indicator.dart';
import 'package:mtei/ui/router/router.gr.dart';
import 'package:provider/provider.dart';
import 'package:transformer_page_view/transformer_page_view.dart';

class IntroPage extends StatefulWidget {
  static String id = 'intro';
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  final IndexController controller = IndexController();

  Widget _controlButtons() {
    int _sliderIndex = Provider.of<IntroGuideProvider>(context).currentIndex;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: <Widget>[
            _sliderIndex == 0
                ? Indicator(active: true)
                : Indicator(active: false),
            _sliderIndex == 1
                ? Indicator(active: true)
                : Indicator(active: false),
            _sliderIndex == 2
                ? Indicator(active: true)
                : Indicator(active: false),
            _sliderIndex == 3
                ? Indicator(active: true)
                : Indicator(active: false),
          ],
        ),
      ],
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.black,
    ));
  }

  @override
  Widget build(BuildContext context) {
    
    final introGuide = Provider.of<IntroGuideProvider>(context);
    
    TransformerPageView transformerPageView = TransformerPageView(
      pageSnapping: true,
      onPageChanged: (index) {
        introGuide.currentIndex = index;
      },
      loop: true,
      controller: controller,
      transformer: PageTransformerBuilder(
        builder: (Widget child, TransformInfo info) {
          return Container(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 18.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 20.0),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: <Widget>[
                        Text(
                          introGuide.guideList[introGuide.currentIndex].title,
                          textAlign: TextAlign.center,
                          style: kTitleTextStyle.copyWith(color: KAppPurple),
                        ),
                        SizedBox(height: 20.0),
                        Text(
                          introGuide.guideList[introGuide.currentIndex].description,
                          textAlign: TextAlign.center,
                          style: kBodyTextStyle,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      itemCount: introGuide.guideList.length
    );

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(width: 4.0, color: KAppPurple),
              ),
            ),
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: HeaderText(),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    child: transformerPageView,
                  ),
                ),
                SizedBox(height: 20.0),
                _controlButtons(),
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                            flex: 1,
                            child: Row(
                              children: [
                                Expanded(
                                  child: OutlineButton(
                                    color: KAppPurple,
                                    child: Text('Skip',
                                        style: kOutlineButtonTextStyle),
                                    borderSide: BorderSide(color: KAppPurple),
                                    onPressed: () {
                                      ExtendedNavigator.of(context)
                                          .popAndPush(Routes.welcomePage);
                                    },
                                  ),
                                ),
                                SizedBox(
                                  width: 20.0,
                                ),
                                Expanded(
                                  child: introGuide.currentIndex <
                                          introGuide.guideList.length - 1
                                      ? RaisedButton(
                                          color: KAppPurple,
                                          child: Text('Next',
                                              style: kSolidButtonTextStyle),
                                          onPressed: () {
                                            setState(
                                              () {
                                                introGuide.currentIndex =
                                                    introGuide.currentIndex <
                                                           introGuide.guideList.length - 1
                                                        ? (introGuide.currentIndex + 1)
                                                        : 0;
                                              },
                                            );
                                          },
                                        )
                                      : RaisedButton(
                                          color: KAppPurple,
                                          child: Text('Get Started',
                                              style: kSolidButtonTextStyle),
                                          onPressed: () {
                                            ExtendedNavigator.root.popAndPush(Routes.welcomePage);
                                          },
                                        ),
                                ),
                              ],
                            )),
                        SizedBox(
                          width: 10.0,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

