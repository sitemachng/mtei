import 'package:flutter/material.dart';
import 'package:mtei/ui/core/ui_config.dart';
import 'package:mtei/ui/core/styles.dart';
import 'package:mtei/ui/screens/sign_up/widgets/pincode_form.dart';

class SignUpPagePincode extends StatelessWidget {
  final String firstName;
  final String lastName;
  final String email;
  final String phone;
  final String address;
  final String password;
  SignUpPagePincode(
      {this.firstName,
      this.lastName,
      this.email,
      this.password,
      this.phone,
      this.address});

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
                // Text(
                //   'Create a pin code to secure your account!',
                //   style: kHeadingTextStyle.copyWith(
                //     fontWeight: FontWeight.w600,
                //     fontSize: 16.0,
                //   ),
                // ),
                Text(
                  'Create your Mtei account!',
                  style: kHeadingTextStyle.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(height: 40.0),
                Expanded(
                  child: BvnForm(
                    email: this.email,
                    phone: this.phone,
                    address: this.address,
                    password: this.password,
                    lastName: this.lastName,
                    firstName: this.firstName,
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
