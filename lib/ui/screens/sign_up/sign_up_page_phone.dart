import 'package:flutter/material.dart';
import 'package:mtei/ui/core/ui_config.dart';
import 'package:mtei/ui/core/styles.dart';
import 'package:mtei/ui/screens/sign_up/widgets/phone_input_form.dart';

class SignUpPagePhone extends StatelessWidget {
  final String firstName;
  final String lastName;
  final String email;
  SignUpPagePhone({this.firstName, this.email, this.lastName});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  'Create your Mtei account!',
                  style: kHeadingTextStyle.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 16.0,
                  ),
                ),
                // Text(
                //   'Your phone number is needed for us to be able to contact you!',
                //   style: kHeadingTextStyle.copyWith(
                //     fontWeight: FontWeight.w600,
                //     fontSize: 16.0,
                //   ),
                // ),
                SizedBox(height: 40.0),
                Expanded(
                  child: PhoneInputForm(
                    email: email,
                    firstName: firstName,
                    lastName: lastName,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
