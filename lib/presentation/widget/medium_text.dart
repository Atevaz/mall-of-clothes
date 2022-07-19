import 'package:flutter/material.dart';
import 'package:magdsoft_flutter_structure/presentation/styles/colors.dart';

class MediumText extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  final int maxLines;
  final TextOverflow overflow;

  MediumText({
    required this.text,
    this.color = AppColor.black,
    this.fontSize = 20,
    this.maxLines = 3,
    this.overflow = TextOverflow.ellipsis,

  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontFamily: 'Medium',
        fontSize: fontSize,
        overflow: overflow
      ),
      maxLines:maxLines ,
    );
  }
}
