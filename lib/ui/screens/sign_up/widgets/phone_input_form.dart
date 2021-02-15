import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mtei/providers/user_provider.dart';
import 'package:mtei/ui/core/styles.dart';
import 'package:mtei/ui/screens/intro/widgets/indicator.dart';
import 'package:mtei/ui/router/router.gr.dart';
import 'package:mtei/ui/screens/sign_in/widgets/custom_input.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:provider/provider.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class PhoneInputForm extends StatefulWidget {
  final String firstName;
  final String lastName;
  final String email;
  // final TextEditingController phoneController;
  PhoneInputForm({this.email, this.firstName, this.lastName});
  @override
  _PhoneInputFormState createState() => _PhoneInputFormState();
}

class _PhoneInputFormState extends State<PhoneInputForm> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController phoneController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  String initialCountry = 'NG';
  PhoneNumber number = PhoneNumber(isoCode: 'NG');
  PhoneNumber phoneNumber;
  String phoneIsoCode;

  @override
  void dispose() {
    // controller?.dispose();
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
                labelText: 'Phone Number',
                hintText: 'Enter phone number',
                errorText: 'Enter Phone number',
                obscureText: false,
                inputType: TextInputType.phone,
                iconType: Icons.phone,
                controller: phoneController,
                validator: (value) {
                  if (value.trim().isEmpty) return 'Phone cannot be empty';
                  if (value.trim().length < 11)
                    return 'Phone cannot be less than 11 characters';
                  return null;
                },
                inputFormatter: [
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(11)
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Your phone number is needed for us to be able to contact you!',
                style: kBodyTextStyle.copyWith(
                    fontSize: 12.0, color: Colors.black54),
              ),
              SizedBox(
                height: 20.0,
              ),
              CustomInput(
                labelText: 'Home address',
                hintText: 'Enter your home address',
                errorText: 'Enter your home address',
                obscureText: false,
                inputType: TextInputType.streetAddress,
                iconType: Icons.location_on_outlined,
                controller: addressController,
                validator: (value) {
                  // if(isEmptyValue(value)) return 'Enter Phone number';
                  if (value.trim().isEmpty) return 'Home address be empty';
                  if (value.trim().length < 4)
                    return 'Home address cannot be less than 4 characters';
                  return null;
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              DropdownButtonHideUnderline(
                child: DropdownButtonFormField<String>(
                  iconSize: 0,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Container(
                      margin: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          stops: [0.1, 0.5],
                          colors: [
                            Color.fromRGBO(60, 16, 83, 0.6),
                            kPrimaryColor,
                          ],
                        ),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: Icon(
                        Icons.person_rounded,
                        size: 16.0,
                        color: Colors.white,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32.0),
                    ),
                    contentPadding: EdgeInsets.fromLTRB(20.0, 13.0, 20.0, 13.0),
                  ),
                  dropdownColor: Colors.black54,
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                  elevation: 0,
                  validator: (value) {
                    if (value.isEmpty) return 'Gender cannot be empty';
                    return null;
                  },
                  items: [
                    DropdownMenuItem(
                      child: Text('Male'),
                      value: 'male',
                    ),
                    DropdownMenuItem(
                      child: Text('Female'),
                      value: 'female',
                    ),
                  ],
                  onChanged: (value) {
                    userProvider.gender = value;
                  },
                  value: userProvider.gender,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 10.0,
                                    spreadRadius: 1.0,
                                    color: Colors.black12,
                                    offset: Offset(0.0, 0.0),
                                  )
                                ],
                              ),
                              child: RaisedButton(
                                elevation: 0,
                                padding: EdgeInsets.only(left: 10, right: 14),
                                shape: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(32.0),
                                ),
                                color: Colors.white,
                                onPressed: () {
                                  DatePicker.showDatePicker(
                                    context,
                                    theme: DatePickerTheme(
                                      containerHeight: 210.0,
                                    ),
                                    showTitleActions: true,
                                    minTime: DateTime(
                                        DateTime.now().year - 100, 1, 1),
                                    maxTime: DateTime(
                                        DateTime.now().year - 10, 12, 31),
                                    onConfirm: (date) {
                                      debugPrint('confirm $date');
                                      userProvider.date =
                                          '${date.year}-${date.month}-${date.day}';
                                    },
                                    currentTime: DateTime.now(),
                                    locale: LocaleType.en,
                                  );
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 50.0,
                                  // padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Container(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: <Widget>[
                                                Container(
                                                  width: 33,
                                                  height: 33,
                                                  // margin: EdgeInsets.all(8.0),
                                                  decoration: BoxDecoration(
                                                    color: kPrimaryColor,
                                                    gradient: LinearGradient(
                                                      begin: Alignment.topRight,
                                                      end: Alignment.bottomLeft,
                                                      stops: [0.1, 0.5],
                                                      colors: [
                                                        Color.fromRGBO(
                                                            60, 16, 83, 0.6),
                                                        kPrimaryColor,
                                                      ],
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50.0),
                                                  ),
                                                  child: Icon(
                                                    Icons.date_range,
                                                    size: 16.0,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 3,
                                                ),
                                                Text(
                                                  " ${userProvider.date}",
                                                  style: TextStyle(
                                                    color: Colors.black54,
                                                    fontSize: 16,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                      Text(
                                        "Select",
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              CustomInput(
                labelText: 'Password',
                hintText: 'Enter password',
                errorText: 'Enter password',
                obscureText: true,
                inputType: TextInputType.text,
                iconType: Icons.lock_outline_rounded,
                controller: passwordController,
                validator: (value) {
                  if (value.trim().isEmpty) return 'Password cannot be empty';
                  if (value.trim().length < 5)
                    return 'Password cannot be less than 5 characters';
                  return null;
                },
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
                    if (_formKey.currentState.validate() &&
                        userProvider.date != 'Select date of birth') {
                      ExtendedNavigator.root.push(
                        Routes.signUpPageOTP,
                        arguments: SignUpPageOTPArguments(
                          email: widget.email,
                          firstName: widget.firstName,
                          lastName: widget.lastName,
                          password: passwordController.text,
                          address: addressController.text,
                          phone: phoneController.text,
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
