import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:magdsoft_flutter_structure/presentation/styles/colors.dart';
import 'package:magdsoft_flutter_structure/presentation/widget/headline_text.dart';
import 'package:magdsoft_flutter_structure/presentation/widget/medium_text.dart';
import 'package:magdsoft_flutter_structure/presentation/widget/regular_text.dart';

class NewCollectionCardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Image(
            image: NetworkImage(
                'https://img.freepik.com/free-photo/woman-black-trousers-purple-blouse-laughs-leaning-stand-with-elegant-clothes-pink-background_197531-17614.jpg?t=st=1658347292~exp=1658347892~hmac=949d592c0cb2370cb7f9cef221bad74e7cdf4ddfe6d1c4fc1427f5073913bf4f&w=996'),
            fit: BoxFit.cover,

          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             HeadLineText(text: 'New Collection', color: AppColor.white,),
              SizedBox(
                height: 5,
              ),
              RegularText(
                  text: 'Explore the week\'s latest news or this section news or this section',
                  color: AppColor.white,
                  maxLines: 2,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 5,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
