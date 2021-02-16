import 'package:flutter/material.dart';
import 'package:mtei/ui/core/styles.dart';
import 'package:flutter/services.dart';
import 'package:mtei/helpers/size_config.dart';
import 'package:searchable_dropdown/searchable_dropdown.dart';
import 'package:mtei/models/bank_model.dart';
import 'package:mtei/ui/screens/send_money/confirm_payment_page.dart';

class SendMoneyForm extends StatefulWidget {
  SendMoneyForm({Key key}) : super(key: key);

  @override
  _SendMoneyFormState createState() => _SendMoneyFormState();
}

class _SendMoneyFormState extends State<SendMoneyForm> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _bankAccountController = TextEditingController();
  TextEditingController _amountController = TextEditingController();
  TextEditingController _remarkController = TextEditingController();
  bool isButtonDisabled = true;
  bool showBankDropdown = false;
  bool showAmountInput = false;
  bool saveBeneficiary = true;

  Bank selectedBank;
  final List<DropdownMenuItem> items = [];
  String beneficiary = 'AHMED OLAYINKA OLANREWAJU';

  @override
  void dispose() {
    super.dispose();
    _bankAccountController.dispose();
    _amountController.dispose();
    _remarkController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Container(
      child: Form(
        key: _formKey,
        child: ListView(
          children: [
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Enter a bank account number', style: kHeadingText3),
                  TextFormField(
                    controller: _bankAccountController,
                    keyboardType: TextInputType.number,
                    validator: (value) => null,
                    onSaved: (value) {},
                    onChanged: (value) {
                      if (value.length < 10) {
                        setState(() {
                          showBankDropdown = false;
                        });
                      } else {
                        setState(() {
                          showBankDropdown = true;
                        });
                      }
                    },
                    cursorColor: kPrimaryColor,
                    style: kControlTextStyle.copyWith(
                        fontWeight: FontWeight.bold,
                        color: kSecondaryTextColor,
                        fontSize: 18.0),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(10)
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
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Visibility(
              maintainSize: false,
              maintainAnimation: true,
              maintainState: true,
              visible: showBankDropdown,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Select Bank', style: kHeadingText3),
                    SearchableDropdown.single(
                      items: Bank.list.map((bank) {
                        return DropdownMenuItem(
                          child: Text(bank.numberString),
                          value: bank,
                        );
                      }).toList(),
                      value: selectedBank,
                      hint: "Select bank",
                      style: kControlTextStyle.copyWith(
                        fontWeight: FontWeight.bold,
                        color: kSecondaryTextColor,
                        fontSize: 18.0,
                      ),
                      searchHint: "Search and select bank",
                      onChanged: (value) {
                        setState(() {
                          selectedBank = value;
                          showAmountInput = true;
                        });
                      },
                      isExpanded: true,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Visibility(
              maintainSize: false,
              maintainAnimation: true,
              maintainState: true,
              visible: showBankDropdown && showAmountInput,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('How much money do you want to send to ${beneficiary}',
                        style: kHeadingText3),
                    TextFormField(
                      controller: _amountController,
                      keyboardType: TextInputType.numberWithOptions(
                        decimal: true,
                      ),
                      validator: (value) => null,
                      onSaved: (value) {},
                      onChanged: (value) {
                        if (value.isEmpty) {
                          setState(() {
                            isButtonDisabled = true;
                          });
                        } else {
                          setState(() {
                            isButtonDisabled = false;
                          });
                        }
                      },
                      cursorColor: kPrimaryColor,
                      style: kControlTextStyle.copyWith(
                          fontWeight: FontWeight.bold,
                          color: kSecondaryTextColor,
                          fontSize: 18.0),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(10)
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
                        prefixIcon: Container(
                          alignment: Alignment.center,
                          height: 40,
                          width: 40,
                          padding: EdgeInsets.all(0),
                          child: Text(
                            '₦',
                            style: kBodyText2.copyWith(fontFamily: 'Arial'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Visibility(
              maintainSize: false,
              maintainAnimation: true,
              maintainState: true,
              visible: showAmountInput,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Save beneficiary?',
                    style: kBodyText4,
                  ),
                  Switch(
                    value: saveBeneficiary,
                    onChanged: (value) {
                      setState(() {
                        saveBeneficiary = value;
                      });
                    },
                    activeTrackColor: Color(0xFF6b37cc),
                    activeColor: kPrimaryColor,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Visibility(
              maintainSize: false,
              maintainAnimation: true,
              maintainState: true,
              visible: showBankDropdown &&
                  showAmountInput &&
                  _amountController.text.isNotEmpty,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Payment remarks (optional)', style: kHeadingText3),
                    TextFormField(
                      controller: _remarkController,
                      keyboardType: TextInputType.text,
                      validator: (value) => null,
                      onSaved: (value) {},
                      // onChanged: (value) {},
                      cursorColor: kPrimaryColor,
                      style: kControlTextStyle.copyWith(
                          fontWeight: FontWeight.bold,
                          color: kSecondaryTextColor,
                          fontSize: 18.0),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(10)
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
                      ),
                    ),
                  ],
                ),
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
                child: Text(
                  'Next',
                  style: isButtonDisabled
                      ? kSolidButtonTextStyle.copyWith(
                          color: kSecondaryTextColor)
                      : kSolidButtonTextStyle,
                ),
                onPressed: isButtonDisabled
                    ? null
                    : () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ConfirmPayment()),
                        );
                      },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
