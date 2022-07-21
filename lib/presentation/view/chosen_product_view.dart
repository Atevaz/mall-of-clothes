import 'package:flutter/material.dart';
import 'package:magdsoft_flutter_structure/presentation/styles/colors.dart';
import 'package:magdsoft_flutter_structure/presentation/widget/regular_text.dart';

class ChosenProductView extends StatelessWidget {
  const ChosenProductView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Column(
        children: [
          Expanded(
            child: Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              width: 300,
              decoration: BoxDecoration(
                  color: AppColor.lightGrey,
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: Center(
                child: Image(
                  image: NetworkImage(
                      'https://i.pinimg.com/736x/8f/e5/47/8fe5479969b6da23ab9edde8d89ba623.jpg'),
                  width: 130,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RegularText(
                      text: '300 \$',
                      color: AppColor.black,
                    ),
                    IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {},
                      icon: Icon(Icons.favorite,),
                    ),
                  ],
                ),
                RegularText(
                  text: 'name of vendor',
                  color: AppColor.black,
                  maxLines: 1,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
