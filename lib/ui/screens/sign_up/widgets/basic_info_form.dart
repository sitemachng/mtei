import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mtei/ui/core/styles.dart';
import 'package:mtei/ui/screens/intro/widgets/indicator.dart';
import 'package:mtei/ui/router/router.gr.dart';
import 'package:mtei/ui/screens/sign_in/widgets/custom_input.dart';

class BasicInfoForm extends StatefulWidget {
  @override
  _BasicInfoFormState createState() => _BasicInfoFormState();
}

class _BasicInfoFormState extends State<BasicInfoForm> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _firstNameController = TextEditingController();
  TextEditingController _lastNameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();

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
                labelText: 'First Name',
                hintText: 'Enter your first name',
                errorText: 'Enter First Name',
                obscureText: false,
                inputType: TextInputType.name,
                iconType: Icons.person,
                controller: _firstNameController,
                validator: (value) {
                  if (value.trim().isEmpty) return 'First name cannot be empty';
                  if (value.trim().length < 3)
                    return 'Name cannot be less than 3 characters';
                  return null;
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              CustomInput(
                labelText: 'Last Name',
                hintText: 'Enter your first name',
                errorText: 'Enter Last Name',
                obscureText: false,
                inputType: TextInputType.name,
                iconType: Icons.person,
                controller: _lastNameController,
                validator: (value) {
                  if (value.trim().isEmpty) return 'last name cant be empty';
                  if (value.trim().length < 3)
                    return 'last name cannot be less than 3 characters';
                  return null;
                },
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                '''We advise that you use your name as seen on your bank account details. This increase your chances of being approved for Mtei loan''',
                style: kBodyTextStyle.copyWith(
                    fontSize: 12.0, color: Colors.black54),
              ),
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
                validator: (value) {
                  Pattern pattern =
                      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                  RegExp myReg = new RegExp(pattern);
                  if (value.trim().isEmpty) return 'Email cant be empty';
                  if (value.trim().length < 5)
                    return 'Email cannot be less than 5 alphabet';
                  if (!myReg.hasMatch(value)) return 'Invalid email address';
                  return null;
                },
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                '''We sometimes share updates on your account, new features announcements, or special customer rewards''',
                style: kBodyTextStyle.copyWith(
                    fontSize: 12.0, color: Colors.black54),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Indicator(active: true),
                    Indicator(active: false),
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
                      ExtendedNavigator.root.push(
                        Routes.signUpPagePhone,
                        arguments: SignUpPagePhoneArguments(
                          email: _emailController.text,
                          firstName: _firstNameController.text,
                          lastName: _lastNameController.text,
                        ),
                      );
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
