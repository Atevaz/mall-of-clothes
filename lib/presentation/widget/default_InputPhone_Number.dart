import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:magdsoft_flutter_structure/presentation/styles/colors.dart';

class DefaultInputPhoneNumber extends StatelessWidget {
  final PhoneNumber? number;
  final TextEditingController? controller;
  final String validateText;


  DefaultInputPhoneNumber({
    required this.number,
    required this.controller,
    required this.validateText,
});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColor.lightGrey,
        borderRadius: BorderRadius.all(Radius.circular(12.0)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: InternationalPhoneNumberInput(
          onInputChanged: (PhoneNumber number) {
          },
          selectorConfig: SelectorConfig(
            selectorType: PhoneInputSelectorType.DROPDOWN,
          ),
          initialValue: number,
          validator: (value) {
            if (value!.isEmpty) {
              return validateText;
            }
            return null;
          },
          textFieldController: controller,
          inputDecoration: InputDecoration(
            contentPadding: EdgeInsetsDirectional.only(bottom: 15,start: 0),
            border: InputBorder.none,
            hintText: '114....',
            hintStyle: TextStyle(
                color: Colors.grey.shade500,
                fontSize: 16
            ),

          ),
        ),
      ),
    );
  }


}
