import 'package:flutter/material.dart';
import 'package:mtei/ui/core/styles.dart';

class CustomInput extends StatefulWidget {
  CustomInput({
    this.labelText,
    this.hintText,
    this.iconType,
    this.inputType,
    this.obscureText,
    this.validator,
    this.onSaved,
    this.onChanged,
    this.targetText,
    this.defaultText,
    this.errorText,
  });

  final IconData iconType;
  final String labelText;
  final String hintText;
  final String targetText;
  final String defaultText;
  final String errorText;
  final TextInputType inputType;
  final bool obscureText;
  final Function validator;
  final Function onSaved;
  final Function onChanged;

  @override
  _CustomInputState createState() => _CustomInputState();
}

class _CustomInputState extends State<CustomInput> {
  final _textController = TextEditingController();
  bool _isValueValid = false;

  @override
  void initState() {
    super.initState();
    _textController.addListener(_checkValid);
    if (widget.defaultText?.isEmpty == false) {
      _textController.text = widget.defaultText;
    }
  }

  @override
  void dispose() {
    super.dispose();
    _textController.dispose();
  }

  _checkValid() {
    setState(() {
      //TODO: iMPLEMENT VALIDATION
      // if (widget.inputType == TextInputType.emailAddress) {
      //   _isValueValid = isValidEmail(_textController.text);
      // } else if (widget.inputType == TextInputType.name) {
      //   _isValueValid = !isEmptyValue(_textController.text);
      // } else if (widget.inputType == TextInputType.number) {
      //   _isValueValid = !isEmptyValue(_textController.text);
      // } else if (widget.inputType == TextInputType.phone) {
      //   _isValueValid = !isEmptyValue(_textController.text);
      // }
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _textController,
      obscureText: widget.obscureText,
      keyboardType: widget.inputType,
      validator: widget.validator,
      onSaved: widget.onSaved,
      onChanged: widget.onChanged,
      cursorColor: kPrimaryColor,
      style: kControlTextStyle,
      decoration: InputDecoration(
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
            widget.iconType,
            size: 16.0,
            color: Colors.white,
          ),
        ),
        suffixIcon: _isValueValid
            ? Container(
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50.0),
                    border: Border.all(
                      width: 1.0,
                      color: kPrimaryColor,
                    )),
                child: Icon(
                  Icons.check,
                  size: 16.0,
                  color: kPrimaryColor,
                ),
              )
            : null,
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: widget.hintText,
        labelText: widget.labelText,
        // errorText: _textController.text.isNotEmpty && !_isValueValid ? widget.errorText : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
    );
  }
}
