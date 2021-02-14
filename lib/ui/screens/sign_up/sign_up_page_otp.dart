import 'package:flutter/material.dart';
import 'package:mtei/ui/core/ui_config.dart';
import 'package:mtei/ui/core/styles.dart';
import 'package:mtei/ui/screens/sign_up/widgets/otp_form.dart';

class SignUpPageOTP extends StatelessWidget {
  final String firstName;
  final String lastName;
  final String email;
  final String phone;
  final String address;
  final String password;
  SignUpPageOTP({this.firstName, this.lastName, this.email, this.password, this.phone, this.address});

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
                  top: BorderSide(width: 4.0, color: KAppPurple),
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
                            color: KAppPurple, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                Text(
                  'Verify your phone number',
                  style: kHeadingTextStyle.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(height: 40.0),
                Expanded(
                  child: OTPForm(email: email, phone: phone, address: address, password: password, lastName: lastName, firstName: firstName,),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
