import 'package:flutter/material.dart';
import 'package:magdsoft_flutter_structure/presentation/router/app_router_names.dart';
import 'package:magdsoft_flutter_structure/presentation/styles/colors.dart';
import 'package:magdsoft_flutter_structure/presentation/widget/material_button.dart';
import 'package:magdsoft_flutter_structure/presentation/widget/text_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BoardingModel {
  String? backgroundImage;
  String? title;
  String? body;

  BoardingModel({
    required this.backgroundImage,
    required this.title,
    required this.body
  });
}
class OnBoardingView extends StatelessWidget {
  var boardController = PageController();

  bool isLast = false;
  List<BoardingModel> boarding = [
    BoardingModel(
      backgroundImage: 'assets/images/onboarding_1.png',
      title: 'Get food delivery to your doorstep asap',
      body: 'We have young and professional delivery team that will bring your food as soon as possible to your doorstep',
    ),

    BoardingModel(
      backgroundImage: 'assets/images/onboarding_2.png',
      title: 'Buy Any Food from your favorite restaurant',
      body: 'We are constantly adding your favourite restaurant throughout the territory and around your area carefully selected',
    ),

    BoardingModel(
      backgroundImage: 'assets/images/onboarding_3.png',
      title: 'Buy Any Food from your favorite restaurant',
      body: 'We are constantly adding your favourite restaurant throughout the territory and around your area carefully selected',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [/*
                  buildDefaultButton(context,
                    nameOfButton: 'Skip',
                    borderRadius: 20,
                    backgroundColor: Color(0xfffaf2e7),
                    textColor: Colors.black,
                    onPressed: () {
                      navigateToAndReplacement(context, LoginScreen());
                    },
                  ),*/
                  MyMaterialButton(
                    onPressed: ()
                    {
                      Navigator.pushNamed(context, AppRouterNames.rLoginRoute);
                    },
                    text: 'Skip',
                    color: AppColor.pink,

                  ),
                ],
              ),
              Text.rich(
                  TextSpan(
                    text: 'O',
                    style: TextStyle(
                        color: AppColor.pink,
                        fontSize: 25,
                        //fontWeight: FontWeight.bold
                      fontFamily: 'SemiBold',
                    ),
                    children: <InlineSpan>[
                      TextSpan(
                        text: 'A',
                        style: TextStyle(fontSize: 25,fontFamily: 'SemiBold',color:AppColor.black ),
                      )
                    ],
                  )
              ),
              Expanded(
                child: PageView.builder(
                  physics: const BouncingScrollPhysics(),
                  controller: boardController,
                  onPageChanged: (int index){

                  },
                  itemBuilder: (context, index) => buildOnBoarding(boarding[index]),
                  itemCount: boarding.length,
                ),
              ),
              SizedBox(height:20 ,),
              SmoothPageIndicator(
                controller: boardController,
                effect:  ExpandingDotsEffect(
                  dotColor: Colors.grey,
                  activeDotColor: AppColor.pink,
                  dotHeight: 5,
                  dotWidth: 10,
                  spacing: 5.0,
                  expansionFactor: 2,
                ),
                count: boarding.length,
              ),
              SizedBox(height:20 ,),
              SizedBox(
                width: double.infinity,
                child: MyMaterialButton(
                  onPressed: ()
                  {
                    Navigator.pushNamed(context, AppRouterNames.rRegisterRoute);
                  },
                  text: 'Get Started',
                  color: AppColor.pink,

                ),
              ),
              /*Container(
                width: MediaQuery.of(context).size.width,
                child: buildDefaultButton(
                  context,
                  nameOfButton: 'Get Started',
                  backgroundColor: Color(0xff51afab),
                  textColor: Colors.white,
                  onPressed: () {
                    //navigateToAndReplacement(context, RegisterScreen());
                  },
                ),
              ),*/
           /*   defaultRegisterRow(
                context,
                textOfButton: 'Sign Up',
                textOfExplain:'Don\'t has any account?',
                fontWeight: FontWeight.bold,
                color: Color(0xff51afab),
              ),*/
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
      ),
    );
  }

  Widget buildOnBoarding(BoardingModel model) => Column(
    children: [
      Expanded(
        child: Image.asset(
          model.backgroundImage!,
        ),
      ),
      Text(
        model.title!,
        style: const TextStyle(
          fontSize: 25,
          fontFamily: 'SemiBold',
          color: AppColor.pink
        ),
        textAlign: TextAlign.center,
      ),
      const SizedBox(
        height: 10,
      ),
      Text(
        model.body!,
        style: TextStyle(
            fontSize: 16,
            color:Colors.grey,
          fontFamily: 'Regular',


        ),
        maxLines: 3,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.center,
      )
    ],
  );

}
