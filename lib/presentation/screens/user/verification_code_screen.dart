import 'package:flutter/material.dart';
import 'package:magdsoft_flutter_structure/presentation/router/app_router_names.dart';
import 'package:magdsoft_flutter_structure/presentation/styles/colors.dart';
import 'package:magdsoft_flutter_structure/presentation/view/forget_password_view.dart';
import 'package:magdsoft_flutter_structure/presentation/widget/default_text_form_field.dart';

class VerificationCodeScreen extends StatelessWidget {
  var verificationNumberOne = TextEditingController();
  var verificationNumberTwo = TextEditingController();
  var verificationNumberThree = TextEditingController();
  var verificationNumberFour = TextEditingController();
  var verificationNumberFive = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return ForgetPasswordView(
      appRouterNames: AppRouterNames.rNewPasswordChangeRoute,
      headLineText: 'Verification',
      subLineText:'Enter Verification Code we just sent you on your phone number',
      buttonText: 'Verify' ,
      widget:Row(
        children:
        [
          buildVerificationItem(verificationNumberOne),
          SizedBox(width: 5,),
          buildVerificationItem(verificationNumberTwo),

          SizedBox(width: 5,),
          buildVerificationItem(verificationNumberThree),

          SizedBox(width: 5,),
          buildVerificationItem(verificationNumberFour),
          SizedBox(width: 5,),
          buildVerificationItem(verificationNumberFive),

        ],
      ),

    ) ;
  }


  Widget buildVerificationItem(TextEditingController controller)=> Expanded(
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
        textAlign: TextAlign.center,
        inputType: TextInputType.number,
        hintText: '',
        controller: controller,//verificationNumberOne,
        validateText: 'This Field Must Not Be Empty',
      ),
    ),
  );
}
