import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mtei/ui/core/styles.dart';
import 'package:mtei/ui/screens/intro/widgets/indicator.dart';
import 'package:mtei/ui/router/router.gr.dart';
import 'package:mtei/ui/screens/sign_in/widgets/custom_input.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class PhoneInputForm extends StatefulWidget {
  @override
  _PhoneInputFormState createState() => _PhoneInputFormState();
}

class _PhoneInputFormState extends State<PhoneInputForm> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController controller = TextEditingController();
  String initialCountry = 'NG';
  PhoneNumber number = PhoneNumber(isoCode: 'NG');
  PhoneNumber phoneNumber;
  String phoneIsoCode;

  @override
  void dispose() {
    controller?.dispose();
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
              // Container(
              //   padding: EdgeInsets.only(left: 20.0),
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(32.0),
              //     border: Border.all(
              //
              //     )
              //   ),
              //   child: InternationalPhoneNumberInput(
              //     onInputChanged: (PhoneNumber number) {
              //       setState(() {
              //         phoneNumber = number;
              //       });
              //     },
              //     onInputValidated: (bool value) {
              //       print(value);
              //     },
              //     ignoreBlank: false,
              //     autoValidate: true,
              //     selectorTextStyle: TextStyle(color: Colors.black),
              //     initialValue: number,
              //     textFieldController: controller,
              //     inputBorder: InputBorder.none,
              //     selectorConfig: SelectorConfig(
              //       selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
              //       showFlags: true,
              //       useEmoji: false,
              //     ),
              //   ),
              // ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Indicator(active: false),
                    Indicator(active: true),
                    Indicator(active: false),
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
                      ExtendedNavigator.root.push(Routes.signUpPageOTP);
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
