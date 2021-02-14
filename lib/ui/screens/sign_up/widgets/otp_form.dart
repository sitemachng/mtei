import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mtei/ui/core/styles.dart';
import 'package:mtei/ui/screens/intro/widgets/indicator.dart';
import 'package:mtei/ui/router/router.gr.dart';
import 'package:mtei/ui/screens/sign_in/widgets/custom_input.dart';

class OTPForm extends StatefulWidget {
  @override
  _OTPFormState createState() => _OTPFormState();
}

class _OTPFormState extends State<OTPForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Form(
      autovalidate: false,
      key: _formKey,
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              SizedBox(
                height: 20.0,
              ),
              CustomInput(
                labelText: 'OTP',
                hintText: 'Enter OTP',
                errorText: 'Enter valid OTP',
                obscureText: false,
                inputType: TextInputType.phone,
                iconType: Icons.textsms,
                validator: (value) {},
              ),
              SizedBox(
                height: 20.0,
              ),
              GestureDetector(
                child: Text(
                  'Didn\'t recieve OTP? Resend now',
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
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Indicator(active: false),
                    Indicator(active: false),
                    Indicator(active: true),
                    Indicator(active: false)
                  ],
                ),
              ),
              ButtonTheme(
                minWidth: MediaQuery.of(context).size.width,
                child: RaisedButton(
                  color: kPrimaryColor,
                  child: Text('Continue', style: kSolidButtonTextStyle),
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      ExtendedNavigator.root.push(Routes.signUpPagePincode);
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
