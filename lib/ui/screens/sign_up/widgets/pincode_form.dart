import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mtei/ui/core/styles.dart';
import 'package:mtei/ui/screens/intro/widgets/indicator.dart';
import 'package:mtei/ui/router/router.gr.dart';
import 'package:mtei/ui/screens/sign_in/widgets/custom_input.dart';

class PincodeForm extends StatefulWidget {
  @override
  _PincodeFormState createState() => _PincodeFormState();
}

class _PincodeFormState extends State<PincodeForm> {

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
                labelText: 'Pin code',
                hintText: 'Enter your pin code to secure',
                errorText: 'Enter First Name',
                obscureText: false,
                inputType: TextInputType.name,
                iconType: Icons.person,
                validator: (value){
                  
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
                  color: KAppPurple,
                  child: Text('Complete Signup', style: kSolidButtonTextStyle),
                  onPressed: () {
                    if(_formKey.currentState.validate()){
                      ExtendedNavigator.root.push(Routes.homePage);
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
