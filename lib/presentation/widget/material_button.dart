import 'package:flutter/material.dart';
import 'package:magdsoft_flutter_structure/presentation/styles/colors.dart';
import 'package:magdsoft_flutter_structure/presentation/widget/headline_text.dart';

class MyMaterialButton extends StatelessWidget {
  final Color color;

  final void Function() onPressed;

  final String text;

  final double width;
  final bool isUpper ;


  const MyMaterialButton({
    Key? key,
    this.color = Colors.pink,
    required this.onPressed,
    required this.text,
     this.width = double.infinity,
    this.isUpper = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: MaterialButton(
        color: color,
        height: 52,
        onPressed: onPressed,
        child: HeadLineText(
          text: isUpper ? text.toUpperCase() : text,
          color: AppColor.white,
          fontSize: 20,
        ),
      ),
    );
  }
}
