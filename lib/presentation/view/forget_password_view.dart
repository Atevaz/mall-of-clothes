import 'package:flutter/material.dart';
import 'package:magdsoft_flutter_structure/presentation/styles/colors.dart';
import 'package:magdsoft_flutter_structure/presentation/widget/headline_text.dart';
import 'package:magdsoft_flutter_structure/presentation/widget/material_button.dart';
import 'package:magdsoft_flutter_structure/presentation/widget/regular_text.dart';

class ForgetPasswordView extends StatefulWidget {
  final String headLineText;
  final String subLineText;
  final String buttonText;
  final String appRouterNames;
  Widget? widget;
  ForgetPasswordView({
   required this.headLineText,
    required this.subLineText,
    required this.widget,
    required this.buttonText,
    required this.appRouterNames,

});

  @override
  State<ForgetPasswordView> createState() => _ForgetPasswordViewState();
}

class _ForgetPasswordViewState extends State<ForgetPasswordView> {
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        backgroundColor: AppColor.white,
        elevation: 0,
        leading: IconButton(
          padding: EdgeInsetsDirectional.only(start: 20),
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back,color: AppColor.pink,),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //'Forget Password'
                HeadLineText(text: widget.headLineText),
                SizedBox(
                  height: 10,
                ),
                //'Enter Phone Number to recover password',
              RegularText(text: widget.subLineText,maxLines: 2),
                SizedBox(
                  height: 10,
                ),
                widget.widget!,
                SizedBox(
                  height: 10,
                ),
                MyMaterialButton(
                  onPressed: () {
                   if (formKey.currentState!.validate()) {
                     Navigator.pushNamed(context, widget.appRouterNames);
                   }

                  },
                  text: widget.buttonText,
                  //color: AppColor.pink,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
