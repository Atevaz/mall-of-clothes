import 'package:flutter/material.dart';
import 'package:magdsoft_flutter_structure/presentation/router/app_router_names.dart';
import 'package:magdsoft_flutter_structure/presentation/styles/colors.dart';
import 'package:magdsoft_flutter_structure/presentation/widget/headline_text.dart';
import 'package:magdsoft_flutter_structure/presentation/widget/material_button.dart';
import 'package:magdsoft_flutter_structure/presentation/widget/regular_text.dart';

class PasswordChangeSuccessfully extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,

     body: Center(
       child: SingleChildScrollView(
         child: Padding(
           padding: const EdgeInsets.all(20),
           child: Column(
             children:
             [
               Image(
                 image: AssetImage('assets/images/completing.png'),
                 height: 300,
               ),
               SizedBox(height: 10,),
               HeadLineText(text: 'Congratulation',fontSize: 30),
               SizedBox(height: 10,),
               RegularText(text: 'Your password has been changed successfully login and continue',maxLines: 2,textAlign: TextAlign.center,fontSize: 18,),
               SizedBox(height: 10,),
               MyMaterialButton(
                 onPressed: () {
                   Navigator.pushNamed(context, AppRouterNames.rLoginRoute);
                 },
                 text: 'LOGIN',
                 color: AppColor.pink,
               ),

             ],
           ),
         ),
       ),
     ),
    );
  }
}
