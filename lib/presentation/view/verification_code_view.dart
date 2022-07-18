import 'package:flutter/material.dart';
import 'package:magdsoft_flutter_structure/presentation/styles/colors.dart';
import 'package:magdsoft_flutter_structure/presentation/widget/default_text_form_field.dart';
import 'package:magdsoft_flutter_structure/presentation/widget/material_button.dart';

class VerificationCodeView extends StatelessWidget {
  var verificationNumberOne = TextEditingController();
  var verificationNumberTwo = TextEditingController();
  var verificationNumberThree = TextEditingController();
  var verificationNumberFour = TextEditingController();
  var verificationNumberFive = TextEditingController();
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
                Text(
                  'Verification',
                  style: TextStyle(
                      fontSize: 20,
                      color: AppColor.pink,
                      fontFamily: 'SemiBold'
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Enter Verification Code we just sent you on your phone number',
                  style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Regular'


                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              Row(
                children:
                [
                  Expanded(
                    child: Container(
                      height: 50,
                      width: 30,
                      decoration: BoxDecoration(
                        color: AppColor.white,
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                          border: Border.all(
                            color: AppColor.pink,
                            width: 2,
                          ),
                      ),
                      child: MyFormField(
                        inputType: TextInputType.number,
                        hintText: '',
                        controller: verificationNumberOne,
                        validateText: 'This Field Must Not Be Empty',
                      ),
                    ),
                  ),
                  SizedBox(width: 5,),
                  Expanded(
                    child: Container(
                      height: 50,
                      width: 30,
                      decoration: BoxDecoration(
                        color: AppColor.white,
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                          border: Border.all(
                            color: AppColor.pink,
                            width: 2,
                          ),
                      ),
                      child: MyFormField(
                        inputType: TextInputType.number,
                        hintText: '',
                        controller: verificationNumberTwo,
                        validateText: 'This Field Must Not Be Empty',
                      ),
                    ),
                  ),
                  SizedBox(width: 5,),

                  Expanded(
                    child: Container(
                      height: 50,
                      width: 30,
                      decoration: BoxDecoration(
                        color: AppColor.white,
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                          border: Border.all(
                            color: AppColor.pink,
                            width: 2,
                          ),
                      ),
                      child: MyFormField(
                        inputType: TextInputType.number,
                        hintText: '',
                        controller: verificationNumberThree,
                        validateText: 'This Field Must Not Be Empty',
                      ),
                    ),
                  ),
                  SizedBox(width: 5,),

                  Expanded(
                    child: Container(
                      height: 50,
                      width: 30,
                      decoration: BoxDecoration(
                        color: AppColor.white,
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                          border: Border.all(
                            color: AppColor.pink,
                            width: 2,
                          ),
                      ),
                      child: MyFormField(
                        inputType: TextInputType.number,
                        hintText: '',
                        controller: verificationNumberFour,
                        validateText: 'This Field Must Not Be Empty',
                      ),
                    ),
                  ),
                  SizedBox(width: 5,),

                  Expanded(
                    child: Container(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      height: 50,
                      width: 30,
                      decoration: BoxDecoration(
                        color: AppColor.white,
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        border: Border.all(
                          color: AppColor.pink,
                          width: 2,
                        ),
                      ),
                      child: Center(
                        child: MyFormField(
                          inputType: TextInputType.number,
                          hintText: '',
                          controller: verificationNumberFive,
                          validateText: 'This Field Must Not Be Empty',
                        ),
                      ),
                    ),
                  ),

                ],
              ),


                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: double.infinity,
                  child: MyMaterialButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {}
                    },
                    text: 'Verify',
                    color: AppColor.pink,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
