import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mtei/providers/user_provider.dart';
import 'package:mtei/ui/core/loader.dart';
import 'package:mtei/ui/core/styles.dart';
import 'package:mtei/ui/screens/intro/widgets/indicator.dart';
import 'package:mtei/ui/router/router.gr.dart';
import 'package:mtei/ui/screens/sign_in/widgets/custom_input.dart';
import 'package:provider/provider.dart';

class BvnForm extends StatefulWidget {
  final String firstName;
  final String lastName;
  final String email;
  final String phone;
  final String address;
  final String password;
  BvnForm(
      {this.firstName,
      this.lastName,
      this.email,
      this.password,
      this.phone,
      this.address});

  @override
  _BvnFormState createState() => _BvnFormState();
}

class _BvnFormState extends State<BvnForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController bvnController = TextEditingController();
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final _dialogRegisterFinalKeyLoader = new GlobalKey<State>();

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final UserProvider userProvider = Provider.of<UserProvider>(context);

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
                controller: bvnController,
                labelText: 'BVN',
                hintText: 'Enter your BVN details',
                errorText: 'Enter your BVN details',
                obscureText: false,
                inputType: TextInputType.number,
                iconType: Icons.person,
                inputFormatter: [
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(10)
                ],
                validator: (value) {
                  if (value.toString().isEmpty) return 'BVN is empty';
                  if (value.toString().length < 10)
                    return 'BVN cannot be less than 10 digit';
                  return null;
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Indicator(active: false),
                    Indicator(active: false),
                    Indicator(active: false),
                    Indicator(active: true)
                  ],
                ),
              ),
              ButtonTheme(
                minWidth: MediaQuery.of(context).size.width,
                child: RaisedButton(
                  color: kPrimaryColor,
                  child: Text('Complete Signup', style: kSolidButtonTextStyle),
                  onPressed: () async {
                    if (_formKey.currentState.validate()) {
                      // print(widget.firstName);
                      // print(widget.lastName);
                      // print(userProvider.gender);
                      // print(userProvider.date);
                      // print(widget.address);
                      // print(widget.email);
                      // print(widget.password);
                      // print(widget.phone);
                      // print(bvnController.text);
                      Dialogs.showLoadingDialog(context,
                          key: _dialogRegisterFinalKeyLoader);
                      await userProvider
                          .signUp(
                              firstName: widget.firstName,
                              lastName: widget.lastName,
                              gender: userProvider.gender,
                              dob: userProvider.date,
                              address: widget.address,
                              email: widget.email,
                              password: widget.password,
                              countryName: '',
                              stateName: 'null',
                              phoneNumber: widget.phone,
                              bvn: bvnController.text)
                          .then((value) {
                        if (value == true) {
                          Navigator.of(context).pop();
                          ExtendedNavigator.root.push(Routes.homePage);
                        } else {
                          // cannot signup
                        }
                      });
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
