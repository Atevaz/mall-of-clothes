import 'package:country_phone_code_picker/core/country_phone_code_picker_widget.dart';
import 'package:country_phone_code_picker/models/country.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:magdsoft_flutter_structure/presentation/router/app_router_names.dart';
import 'package:magdsoft_flutter_structure/presentation/styles/colors.dart';
import 'package:magdsoft_flutter_structure/presentation/widget/material_button.dart';
import 'package:magdsoft_flutter_structure/presentation/widget/text_button.dart';

import '../widget/default_text_form_field.dart';

class LoginView extends StatelessWidget {

  LoginView({Key? key}) : super(key: key);

  var phoneController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .4,
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Login',
                            style: Theme.of(context)
                                .textTheme
                                .headline3!
                                .copyWith(color: AppColor.pink)),
                        Text(
                          'Welcome to kashkha',
                          style: Theme.of(context)
                              .textTheme
                              .headline3!
                              .copyWith(color: Colors.black54),
                          maxLines: 2,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      flex: 1, child: Image.asset('assets/images/login1.png'))
                ],
              ),
            ),
            Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
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
                    inputType: TextInputType.number,
                    isPassword: true,
                    hintText: 'Password',
                    controller: passwordController,
                    validateText: 'This Field Must Not Be Empty',
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      DefaultTextButton(text: 'forget password ? ', onPressed : (){}),
                    ],
                  ),
                  MyMaterialButton(
                    onPressed: () {
                      if(formKey.currentState!.validate()){

                      }
                    },
                    text: 'LOGIN',
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
                      DefaultTextButton(text: 'Don\'t have account ?', onPressed: (){Navigator.pushNamed(context, AppRouterNames.rRegisterRoute);}),
                      InkWell(
                        onTap: (){},
                        child: Row(
                          children: [
                            const Text(
                              'New Account',
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

          ],
        ),
      ),
    );
  }
}
