import 'package:flutter/material.dart';
import 'package:magdsoft_flutter_structure/presentation/styles/colors.dart';

class RegularText extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
   int? maxLines;
  TextAlign? textAlign;
  final TextOverflow overflow;

  RegularText({
    required this.text,
    this.color = Colors.grey,
    this.fontSize = 16,
    this.maxLines ,
    this.overflow = TextOverflow.ellipsis,
    this.textAlign,

  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontFamily: 'Regular',
          fontSize: fontSize,
          overflow: overflow,
      ),
      maxLines:maxLines ,
      textAlign:textAlign ,
    );
  }
}
