import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mtei/ui/core/styles.dart';
import 'package:mtei/ui/router/router.gr.dart';
import 'package:mtei/ui/screens/sign_in/widgets/custom_input.dart';

class SignInForm extends StatelessWidget {
  final GlobalKey<State> _keyLoader = new GlobalKey<State>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Form(
      autovalidate: false,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 20.0,
            ),
            CustomInput(
              labelText: 'Phone Number',
              hintText: 'Enter phone number',
              errorText: 'Enter Phone number',
              obscureText: false,
              inputType: TextInputType.phone,
              iconType: Icons.phone,
              // validator: (value){
              //   if(isEmptyValue(value)) return 'Enter Phone number';
              // },
            ),
            SizedBox(
              height: 20.0,
            ),
            CustomInput(
              labelText: 'Pin',
              hintText: 'Enter PIN',
              errorText: 'Enter PIN',
              obscureText: true,
              inputType: TextInputType.number,
              iconType: Icons.lock,
              validator: (value){
                
              },
            ),
            SizedBox(
              height: 10.0,
            ),
            GestureDetector(
              child: Text(
                'Forgot PIN?',
                style: kHeadingTextStyle.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 12.0,
                  color: KAppPurple,
                ),
                textAlign: TextAlign.start,
              ),
              onTap: () {},
            ),
            SizedBox(
              height: 40.0,
            ),
            ButtonTheme(
              minWidth: size.width,
              child: RaisedButton(
                color: KAppPurple,
                child: Text('Sign in', style: kSolidButtonTextStyle),
                onPressed: () {
                  ExtendedNavigator.of(context).push(Routes.homePage);
                },
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            GestureDetector(
              child: Text(
                'Don\'t have an account? Sign up',
                style: kHeadingTextStyle.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 12.0,
                  color: KAppPurple,
                ),
                textAlign: TextAlign.start,
              ),
              onTap: () {
                ExtendedNavigator.of(context).popAndPush(Routes.signUpPage);
              },
            ),
            SizedBox(
              height: 40.0,
            ),
            Text(
              'mtei is a service provided by Liberty Assured, a licensed regulated lender.',
              style: kBodyTextStyle.copyWith(
                  fontSize: 14.0,
                  color: Colors.black54
              ),
            ),
          ],
        ),
      ),
    );
  }
}
