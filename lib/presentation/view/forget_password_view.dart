import 'package:country_phone_code_picker/country_phone_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:magdsoft_flutter_structure/presentation/router/app_router_names.dart';
import 'package:magdsoft_flutter_structure/presentation/styles/colors.dart';
import 'package:magdsoft_flutter_structure/presentation/widget/default_text_form_field.dart';
import 'package:magdsoft_flutter_structure/presentation/widget/material_button.dart';

class ForgetPasswordView extends StatelessWidget {
  var phoneController = TextEditingController();
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
                  'Forget Password',
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
                  'Enter Phone Number to recover password',
                  style: TextStyle(
                    color: Colors.grey,
                      fontFamily: 'Regular'

                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Image(
                    image: AssetImage('assets/images/login3.png'),
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  //fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 10,
                ),
                MyFormField(
                  inputType: TextInputType.text,
                  hintText: '+965',
                  controller: phoneController,
                  validateText: 'This Field Must Not Be Empty',
                  prefix: CountryPhoneCodePicker.withDefaultSelectedCountry(
                    defaultCountryCode: Country(
                        name: 'Egypt', countryCode: 'EG', phoneCode: '+20'),
                    style: const TextStyle(fontSize: 16),
                    searchBarHintText: 'Search by name',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: MyMaterialButton(
                    onPressed: () {
                      /*if (formKey.currentState!.validate()) {

                      }*/
                      Navigator.pushNamed(context, AppRouterNames.rVerificationCodeRoute);
                    },
                    text: 'Send Code',
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
