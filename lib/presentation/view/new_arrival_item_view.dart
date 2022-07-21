import 'package:flutter/material.dart';
import 'package:magdsoft_flutter_structure/presentation/styles/colors.dart';
import 'package:magdsoft_flutter_structure/presentation/widget/regular_text.dart';

class NewArrivalItemView extends StatelessWidget {
  const NewArrivalItemView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 200,
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Column(
        children: [
          Expanded(
            child: Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              width: 200,
              decoration: BoxDecoration(
                color: AppColor.lightGrey,
                borderRadius: BorderRadius.all(Radius.circular(15))
              ),
              child: Center(
                child: Image(
                  image: NetworkImage(
                      'https://i.pinimg.com/736x/8f/e5/47/8fe5479969b6da23ab9edde8d89ba623.jpg'),
                  width: 150,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          RegularText(
            text: 'name of vendor',
            color: AppColor.black,
            maxLines: 1,
          ),
          SizedBox(height: 5,),

        ],
      ),
    );
  }
}
