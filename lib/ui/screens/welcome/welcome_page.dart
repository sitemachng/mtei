import 'package:auto_route/auto_route.dart';
import 'package:mtei/ui/router/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mtei/ui/core/mtei_config.dart';
import 'package:mtei/ui/core/styles.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 35.0,
            vertical: 20.0,
          ),
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
              border: Border(
                top: BorderSide(width: 4.0, color: KAppPurple),
              ),
              color: Colors.white),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage('assets/images/logo_cube.png'),
                      height: 32.0,
                      width: 32.0,
                    ),
                    Text(
                      mtei.app_name,
                      style: kHeadingTextStyle.copyWith(
                          color: KAppPurple, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Text(
                'Welcome to mtei!',
                style: kHeadingTextStyle.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 25.0,
                  color: KAppPurple,
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RaisedButton(
                    color: KAppPurple,
                    child: Text('Register', style: kSolidButtonTextStyle),
                    onPressed: () {                      
                      ExtendedNavigator.root.push(Routes.signUpPage);
                    },
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 20.0,
                  ),
                  Text(
                    'I already have a mtei account',
                    style: kBodyTextStyle.copyWith(
                      color: KAppPurple,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 100.0,
                  ),
                  OutlineButton(
                    color: KAppPurple,
                    child: Text('Sign in', style: kOutlineButtonTextStyle),
                    borderSide: BorderSide(color: KAppPurple),
                    onPressed: () {
                      ExtendedNavigator.of(context).push(Routes.signInPage);
                    },
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 20.0,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
