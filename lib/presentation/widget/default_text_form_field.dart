import 'package:flutter/material.dart';
import 'package:magdsoft_flutter_structure/presentation/styles/colors.dart';

class MyFormField extends StatelessWidget {
  final Widget? prefix;

  final TextEditingController controller;

  final String validateText;

  final bool isPassword;

  final TextInputType inputType;

  final String hintText;
  final TextAlign textAlign;
  final Color color;

  const MyFormField({
    Key? key,
    required this.controller,
    required this.validateText,
    this.isPassword = false,
    required this.inputType,
    required this.hintText,
    this.prefix,
    this.textAlign = TextAlign.start,
    this.color = AppColor.lightGrey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (value) {
        if (value!.isEmpty) {
          return validateText;
        }
      },
      obscureText: isPassword,
      keyboardType: inputType,
      textAlign: textAlign,
      decoration: InputDecoration(
        hintText: hintText,
        border: InputBorder.none,
        focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12.0)),
            borderSide: BorderSide.none
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12.0)),
          borderSide: BorderSide.none
        ),
        prefixIcon: prefix,
        fillColor: color,
        filled: true,
      ),
    );
  }
}
