import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mtei/ui/core/app_scaffold.dart';
import 'package:mtei/ui/core/styles.dart';
import 'package:mtei/helpers/size_config.dart';

class AddCardPage extends StatefulWidget {
  final String title = 'Add new card';
  @override
  _AddCardPageState createState() => _AddCardPageState();
}

class _AddCardPageState extends State<AddCardPage> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController _cardNumber = TextEditingController();
  TextEditingController _monthController = TextEditingController();
  TextEditingController _cvvController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _cardNumber.dispose();
    _monthController.dispose();
    _cvvController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: Text(widget.title),
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: kPrimaryTextColor,
          size: 32,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      body: Container(
        padding:
            EdgeInsets.only(left: 15.0, right: 15.0, top: 20.0, bottom: 20.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              SizedBox(height: 20),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Card Number', style: kHeadingText3),
                    TextFormField(
                      controller: _cardNumber,
                      keyboardType: TextInputType.number,
                      validator: (value) => null,
                      onSaved: (value) {},
                      onChanged: (value) {},
                      cursorColor: kPrimaryColor,
                      style: kControlTextStyle.copyWith(
                          fontWeight: FontWeight.bold,
                          color: kSecondaryTextColor,
                          fontSize: 18.0),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(16)
                      ],
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: kPrimaryBorder),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: kSecondaryColor),
                          ),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(color: kPrimaryBorder),
                          ),
                          suffixIcon: Container(
                            margin: EdgeInsets.all(10.0),
                            child: Icon(
                              Icons.payment,
                              size: 16.0,
                              color: Colors.grey[300],
                            ),
                          )),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('MM/YY', style: kHeadingText3),
                    TextFormField(
                      controller: _monthController,
                      keyboardType: TextInputType.number,
                      validator: (value) => null,
                      onSaved: (value) {},
                      onChanged: (value) {},
                      cursorColor: kPrimaryColor,
                      style: kControlTextStyle.copyWith(
                          fontWeight: FontWeight.bold,
                          color: kSecondaryTextColor,
                          fontSize: 18.0),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(4)
                      ],
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: kPrimaryBorder),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: kSecondaryColor),
                        ),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: kPrimaryBorder),
                        ),
                        suffixIcon: Container(
                          margin: EdgeInsets.all(10.0),
                          child: Icon(
                            Icons.info,
                            size: 16.0,
                            color: Colors.grey[300],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('CVV', style: kHeadingText3),
                    TextFormField(
                      controller: _cvvController,
                      keyboardType: TextInputType.number,
                      validator: (value) => null,
                      onSaved: (value) {},
                      onChanged: (value) {},
                      cursorColor: kPrimaryColor,
                      style: kControlTextStyle.copyWith(
                          fontWeight: FontWeight.bold,
                          color: kSecondaryTextColor,
                          fontSize: 18.0),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(3)
                      ],
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: kPrimaryBorder),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: kSecondaryColor),
                        ),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: kPrimaryBorder),
                        ),
                        suffixIcon: Container(
                          margin: EdgeInsets.all(10.0),
                          child: Icon(
                            Icons.info,
                            size: 16.0,
                            color: Colors.grey[300],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              ButtonTheme(
                  minWidth: SizeConfig.blockSizeHorizontal * 100,
                  height: 48,
                  child: RaisedButton(
                    color: kPrimaryColor,
                    disabledColor: kPrimaryBorder,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.lock,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          'Securely pay ₦50.00',
                          style: kSolidButtonTextStyle.copyWith(
                            fontFamily: 'Arial',
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {},
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
