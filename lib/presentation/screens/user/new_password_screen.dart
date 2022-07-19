import 'package:flutter/material.dart';
import 'package:magdsoft_flutter_structure/presentation/router/app_router_names.dart';
import 'package:magdsoft_flutter_structure/presentation/view/forget_password_view.dart';
import 'package:magdsoft_flutter_structure/presentation/widget/default_text_form_field.dart';

class NewPasswordScreen extends StatelessWidget {
  var newPasswordController = TextEditingController();
  var confirmPasswordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return ForgetPasswordView(
      appRouterNames: AppRouterNames.rPasswordChangeSuccessfullyRoute,
      headLineText: 'New Password',
      subLineText:'Your new password must be different from previous one.' ,
      buttonText: 'reset Password' ,
      widget:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:
        [
          MyFormField(
            inputType: TextInputType.visiblePassword,
            isPassword: true,
            hintText: 'New Password',
            controller: newPasswordController,
            validateText: 'This Field Must Not Be Empty',
          ),
          const SizedBox(
            height: 10,
          ),
          MyFormField(
            inputType: TextInputType.visiblePassword,
            isPassword: true,
            hintText: 'Confirm Password',
            controller: confirmPasswordController,
            validateText: 'This Field Must Not Be Empty',
          ),
        ],
      ) ,

    );
  }
}
