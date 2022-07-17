import 'package:country_phone_code_picker/core/country_phone_code_picker_widget.dart';
import 'package:country_phone_code_picker/models/country.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:magdsoft_flutter_structure/presentation/styles/colors.dart';
import 'package:magdsoft_flutter_structure/presentation/widget/default_text_form_field.dart';

import '../widget/material_button.dart';
import '../widget/text_button.dart';

class RegisterView extends StatelessWidget {
  RegisterView({Key? key}) : super(key: key);
  var phoneController = TextEditingController();
  var passwordController = TextEditingController();
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var confirmPasswordController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            child: Container(
                color: AppColor.pink,
                height: MediaQuery.of(context).size.height * .20,
                padding: const EdgeInsets.all(20),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'CREATE NEW ACCOUNT',
                  style: Theme.of(context)
                      .textTheme
                      .headline5!
                      .copyWith(color: AppColor.white),
                )),
          ),
          Form(
            key: formKey,
            child: Container(
              height: MediaQuery.of(context).size.height * .80,
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: AppColor.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MyFormField(
                    inputType: TextInputType.text,
                    hintText: 'User Name',
                    controller: nameController,
                    validateText: 'This Field Must Not Be Empty',
                  ),
                  const SizedBox(
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
                  const SizedBox(
                    height: 10,
                  ),
                  MyFormField(
                    inputType: TextInputType.text,
                    isPassword: true,
                    hintText: 'Email',
                    controller: emailController,
                    validateText: 'This Field Must Not Be Empty',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  MyFormField(
                    inputType: TextInputType.number,
                    isPassword: true,
                    hintText: 'Password',
                    controller: passwordController,
                    validateText: 'This Field Must Not Be Empty',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  MyFormField(
                    inputType: TextInputType.number,
                    isPassword: true,
                    hintText: 'Confirm Password',
                    controller: confirmPasswordController,
                    validateText: 'This Field Must Not Be Empty',
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      DefaultTextButton(
                          text: 'forget password ? ', onPressed: () {}),
                    ],
                  ),
                  MyMaterialButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {}
                    },
                    text: 'CREATE ACCOUNT',
                    color: AppColor.pink,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'OR',
                    style: TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.red[50],
                        child: SvgPicture.asset(
                          'assets/icons/google.svg',
                          color: Colors.redAccent,
                          width: 25,
                          height: 25,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.blue[50],
                        child: SvgPicture.asset(
                          'assets/icons/face.svg',
                          color: Colors.blue,
                          width: 25,
                          height: 25,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.black12,
                        child: SvgPicture.asset(
                          'assets/icons/apple.svg',
                          color: Colors.black,
                          width: 25,
                          height: 25,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DefaultTextButton(
                          text: 'already have account ?', onPressed: () {}),
                      InkWell(
                        onTap: () {},
                        child: Row(
                          children: [
                            const Text(
                              'Sign In',
                              style: TextStyle(color: AppColor.pink),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.pink[50],
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(1.0),
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  color: AppColor.pink,
                                  size: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
