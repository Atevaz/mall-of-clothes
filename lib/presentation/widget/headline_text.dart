import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:magdsoft_flutter_structure/presentation/styles/colors.dart';

class HeadLineText extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  final int maxLines;
   bool? isUpper;
  final TextOverflow overflow;


  HeadLineText({
    required this.text,
    this.color = AppColor.pink,
    this.fontSize = 25,
    this.maxLines = 1,
    this.overflow = TextOverflow.ellipsis,
    this.isUpper = true,

  });

  @override
  Widget build(BuildContext context) {
    return Text(
      isUpper! ?  text.toUpperCase():text,
      style: TextStyle(
        color: color,
        fontFamily: 'SemiBold',
        fontSize: fontSize.sp,
          overflow: overflow

      ),
      maxLines:maxLines ,
    );
  }
}
