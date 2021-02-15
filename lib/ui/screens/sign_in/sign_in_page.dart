import 'package:flutter/material.dart';
import 'package:mtei/ui/core/ui_config.dart';
import 'package:mtei/ui/core/styles.dart';
import 'package:mtei/ui/screens/sign_in/widgets/sign_in_form.dart';

class SignInPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key: _scaffoldKey,
      body: SafeArea(
        child: Center(
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 35.0,
              vertical: 35.0,
            ),
            decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(width: 4.0, color: kPrimaryColor),
                ),
                color: Colors.white),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image(
                        image: AssetImage('assets/images/logo_cube.png'),
                        height: 32.0,
                        width: 32.0,
                      ),
                      Text(
                        UIConfig.app_name,
                        style: kHeadingTextStyle.copyWith(
                            color: kPrimaryColor, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                Text(
                  'Welcome to mtei!',
                  style: kHeadingTextStyle.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(height: 40.0),
                Expanded(
                  child: SignInForm(scaffoldKey: _scaffoldKey,),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
