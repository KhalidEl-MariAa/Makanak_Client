import 'package:client_pro/core/reusable.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hinttext, this.prefixIcon, this.suffixIcon, this.keyboardType, required this.obscureText, this.onchange, required this.valTrue, this.validator, this.controller});
final String hinttext;
final Widget? prefixIcon;
final Widget? suffixIcon;
final TextInputType? keyboardType;
final bool obscureText;
final void Function(String)? onchange;
final bool valTrue;
final String? Function(String?)? validator;
final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      controller: controller,
      validator:valTrue? validator :(value) {
        return null;
      },
      onChanged: onchange,
      obscureText: obscureText,
           cursorColor: Reusable.reuseColor,
           keyboardType: keyboardType ,
              decoration: InputDecoration(
                focusColor: Reusable.reuseColor,
               fillColor: Reusable.reuseColor,
                hintText: hinttext,
                prefixIcon:prefixIcon ,
                suffixIcon: suffixIcon,
                border:  const OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Reusable.reuseColor))              ),
            );
  }
}