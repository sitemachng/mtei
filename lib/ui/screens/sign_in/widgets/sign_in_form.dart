import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mtei/providers/user_provider.dart';
import 'package:mtei/ui/core/loader.dart';
import 'package:mtei/ui/core/styles.dart';
import 'package:mtei/ui/router/router.gr.dart';
import 'package:mtei/ui/screens/sign_in/widgets/custom_input.dart';
import 'package:provider/provider.dart';

class SignInForm extends StatelessWidget {
  final scaffoldKey;
  SignInForm({this.scaffoldKey});
  final GlobalKey<State> _keyLoader = new GlobalKey<State>();
  TextEditingController _emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final _dialogSignInKeyLoader = new GlobalKey<State>();
  // GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final UserProvider userProvider = Provider.of<UserProvider>(context);

    return Form(
      key: _formKey,
      autovalidate: false,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 20.0,
            ),
            CustomInput(
              labelText: 'Email',
              hintText: 'Enter your email',
              errorText: 'Enter valid email',
              obscureText: false,
              inputType: TextInputType.emailAddress,
              iconType: Icons.email,
              controller: _emailController,
              validator: (value){
                Pattern pattern =
                    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                RegExp myReg = new RegExp(pattern);
                if (value.trim().isEmpty) return 'Email cant be empty';
                if (value.trim().length < 5) return 'Email cannot be less than 5 alphabet';
                if (!myReg.hasMatch(value)) return 'Invalid email address';
                return null;
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            CustomInput(
              labelText: 'Password',
              hintText: 'Enter password',
              errorText: 'Enter password',
              obscureText: true,
              inputType: TextInputType.text,
              iconType: Icons.lock_outline_rounded,
              controller: passwordController,
              validator: (value){
                if (value.trim().isEmpty) return 'Password cannot be empty';
                if (value.trim().length < 5) return 'Password cannot be less than 5 characters';
                return null;
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
                  color: kPrimaryColor,
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
                color: kPrimaryColor,
                child: Text('Sign in', style: kSolidButtonTextStyle),
                onPressed: () async {
                  if(_formKey.currentState.validate()) {
                    Dialogs.showLoadingDialog(context, key: _dialogSignInKeyLoader);
                    await userProvider.sinIn(
                        email: _emailController.text,
                        password: passwordController.text
                    ).then((value) {
                      if(value != false && value != null){
                        Navigator.of(context).pop();
                        if(value['success'] == 'false'){
                          scaffoldKey.currentState.showSnackBar(
                              SnackBar(
                                content: Text(value['error'] ?? 'Error'),
                              )
                          );
                        } else {
                          ExtendedNavigator.of(context).push(Routes.homePage);
                        }
                      } else {
                        Navigator.of(context).pop();
                        scaffoldKey.currentState.showSnackBar(
                            SnackBar(
                              content: Text('Error login in, please try again later'),
                            )
                        );
                        // cannot signin
                      }
                      // if(value == true){
                      //   Navigator.of(context).pop();
                      //   ExtendedNavigator.of(context).push(Routes.homePage);
                      // } else {
                      //
                      //   // cannot signup
                      // }
                    });
                  }
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
                  color: kPrimaryColor,
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
              'This service is provided by MTEI, a licensed regulated lender.',
              style: kBodyTextStyle.copyWith(
                  fontSize: 14.0, color: Colors.black54),
            ),
          ],
        ),
      ),
    );
  }
}
