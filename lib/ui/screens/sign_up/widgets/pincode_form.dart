import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mtei/ui/core/styles.dart';
import 'package:mtei/ui/screens/intro/widgets/indicator.dart';
import 'package:mtei/ui/router/router.gr.dart';
import 'package:mtei/ui/screens/sign_in/widgets/custom_input.dart';

class BvnForm extends StatefulWidget {
  final String firstName;
  final String lastName;
  final String email;
  final String phone;
  final String address;
  final String password;
  BvnForm({this.firstName, this.lastName, this.email, this.password, this.phone, this.address});

  @override
  _BvnFormState createState() => _BvnFormState();
}

class _BvnFormState extends State<BvnForm> {

  final _formKey = GlobalKey<FormState>();
  final TextEditingController bvnController = TextEditingController();

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
                controller: bvnController,
                labelText: 'BVN',
                hintText: 'Enter your BVN details',
                errorText: 'Enter your BVN details',
                obscureText: false,
                inputType: TextInputType.number,
                iconType: Icons.person,
                inputFormatter: [FilteringTextInputFormatter.digitsOnly, LengthLimitingTextInputFormatter(10)],
                validator: (value){
                  if(value.toString().isEmpty) return 'BVN is empty';
                  if(value.toString().length < 10) return 'BVN cannot be less than 10 digit';
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
