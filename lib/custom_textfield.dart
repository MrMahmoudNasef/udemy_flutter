import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  // final IconData icon;
  final String lblTxt;
  final TextEditingController controller;
  final dynamic onSubmit;

  var hint;
  bool enable = true;
  // final dynamic onChange;
  final dynamic onTap;
  var onClick;
  var keyboardType;
  final dynamic prefix;
  final dynamic suffix;
  final dynamic suffixPressed;
  final bool isPassword;

  String _errorMessage(String str) {
    switch (hint) {
      case 'Email Address':
        return 'please enter your email!';
      case 'PassWord':
        return 'please enter your password!';
      case 'Enter Task Time':
        return 'Time is empty !';
    }
    return '';
  }

  CustomTextField({
    required this.onClick,
    // required this.icon,
    required this.lblTxt,
    required this.keyboardType,
    required this.controller,
    required this.onTap,
    enable,validator,
    this.onSubmit,
    required this.hint,
    this.suffixPressed,
    this.suffix,
    // required this.onChange,
    this.prefix,
    this.isPassword = false,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        obscureText: isPassword,
        onFieldSubmitted: onSubmit,
        // onChanged: onChange,
        controller: controller,
        validator: (value) {
          if (value!.isEmpty) {
            return _errorMessage(hint);
          }
        },
        // onSaved: onClick,
        onTap: onTap,
        keyboardType: keyboardType,
        enabled: enable,
        //obscureText: hint =='Enter Your Password' ? true:false,

        cursorColor: Colors.red,style: const TextStyle(
        fontFamily: 'Lazar'
      ),

        decoration: InputDecoration(
          suffixIcon: Icon(suffix),
          prefixIcon: GestureDetector(
            onTap: suffixPressed,
            child: Icon(
              prefix,
            ),
          ),
          hintText: hint,
          labelText: lblTxt,
          labelStyle: TextStyle(
            fontFamily: 'Candy',
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: MediaQuery.of(context).size.width * 0.06),
          // prefixIcon: Icon(
          //   icon,
          //   color: Colors.red,
          // ),
          filled: true,
          fillColor: Colors.white10,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.black)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.black)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.black)),
        ),
      ),
    );
  }
}
