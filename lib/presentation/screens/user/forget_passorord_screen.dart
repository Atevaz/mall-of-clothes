import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:magdsoft_flutter_structure/presentation/router/app_router_names.dart';
import 'package:magdsoft_flutter_structure/presentation/view/forget_password_view.dart';
import 'package:magdsoft_flutter_structure/presentation/widget/default_InputPhone_Number.dart';

class ForgetPasswordScreen extends StatelessWidget {
  PhoneNumber number = PhoneNumber(isoCode: 'EG');
  var phoneController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return ForgetPasswordView(
      appRouterNames: AppRouterNames.rVerificationCodeRoute,
      buttonText: 'Send code' ,
      headLineText: 'Forget Password',
      subLineText:'Enter Phone Number to recover password' ,
      widget:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:
        [
          Image(
            image: AssetImage('assets/images/forgot_password.png'),
            height: 300,
            width: MediaQuery.of(context).size.width,
            //fit: BoxFit.cover,
          ),
          SizedBox(
            height: 10,
          ),
          DefaultInputPhoneNumber(
            controller: phoneController,
            number: number,
            validateText: 'This Field Must Not Be Empty',
          ),
        ],
      ) ,

    ) ;
  }
}
