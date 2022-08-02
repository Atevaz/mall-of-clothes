import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:magdsoft_flutter_structure/presentation/styles/colors.dart';
import 'package:magdsoft_flutter_structure/presentation/widget/headline_text.dart';
import 'package:magdsoft_flutter_structure/presentation/widget/regular_text.dart';

import '../widget/material_button.dart';

class FilterBottomSheet extends StatefulWidget {
  FilterBottomSheet({Key? key, required this.onPressed}) : super(key: key);
  final VoidCallback onPressed;

  @override
  State<FilterBottomSheet> createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends State<FilterBottomSheet> {
  bool valueOfWomenCheekBox = false;

  bool valueOfMenCheekBox = false;

  bool valueOfKidCheekBox = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
        topRight: Radius.circular(35.r),
        topLeft: Radius.circular(35.r),
      )),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: BottomSheet(
          backgroundColor: AppColor.grey,
          enableDrag: true,
          // animationController: BottomSheet.createAnimationController(vsync),
          onClosing: () {},
          constraints: BoxConstraints(
            maxHeight: 365.h,
          ),
          builder: (context) {
            return Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.add_road_rounded,
                        color: AppColor.pink,
                        size: 35,
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      HeadLineText(
                        text: 'Category',
                        color: AppColor.pink,
                        fontSize: 35.sp,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    children: [
                      RegularText(
                        text: 'Women',
                        color: AppColor.black,
                        fontSize: 25.sp,
                      ),
                      Spacer(),
                      Transform.scale(
                        scale: 1.7,
                        child: Checkbox(
                          side: BorderSide(width: 1.w, color: AppColor.pink!),
                          value: valueOfWomenCheekBox,
                          onChanged: (value) {
                            setState(() {
                              valueOfWomenCheekBox = value!;
                            });
                          },
                          activeColor: AppColor.pink,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    children: [
                      RegularText(
                        text: 'Mens',
                        color: AppColor.black,
                        fontSize: 25.sp,
                      ),
                      Spacer(),
                      Transform.scale(
                        scale: 1.7,
                        child: Checkbox(
                          value: valueOfMenCheekBox,
                          side: BorderSide(width: 1.w, color: AppColor.pink!),
                          onChanged: (value) {
                            setState(() {
                              valueOfMenCheekBox = value!;
                            });
                          },
                          activeColor: AppColor.pink,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    children: [
                      RegularText(
                        text: 'Kids',
                        color: AppColor.black,
                        fontSize: 25.sp,
                      ),
                      Spacer(),
                      Transform.scale(
                        scale: 1.7,
                        child: Checkbox(
                            value: valueOfKidCheekBox,
                            onChanged: (value) {
                              setState(() {
                                valueOfKidCheekBox = value!;
                              });
                            },
                            side: BorderSide(width: 1.w, color: AppColor.pink!),
                            activeColor: AppColor.pink,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.r))),
                      )
                    ],
                  ),
                  Spacer(),
                  MyMaterialButton(
                    text: 'Done',
                    onPressed: widget.onPressed,
                    height: 60,
                    textSize: 25,
                  )
                ],
              ),
            );
          }),
    );
  }
}
