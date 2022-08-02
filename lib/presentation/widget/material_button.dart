import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:magdsoft_flutter_structure/presentation/styles/colors.dart';
import 'package:magdsoft_flutter_structure/presentation/widget/headline_text.dart';

class MyMaterialButton extends StatelessWidget {
  final Color color;

  final void Function() onPressed;

  final String text;

  final double width;
  final double height;
  final double textSize;
  final bool isUpper ;


  const MyMaterialButton({
    Key? key,
    this.color = Colors.pink,
    required this.onPressed,
    required this.text,
     this.width = double.infinity,
    this.isUpper = true,
    this.height = 52,
    this.textSize = 20,
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
        height: height.h,
        onPressed: onPressed,
        child: HeadLineText(
          text: isUpper ? text.toUpperCase() : text,
          color: AppColor.white,
          fontSize: textSize.sp,
        ),
      ),
    );
  }
}
