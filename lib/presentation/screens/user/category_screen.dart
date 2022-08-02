import 'package:flutter/material.dart';
import 'package:magdsoft_flutter_structure/presentation/view/dropdown_component.dart';
import 'package:magdsoft_flutter_structure/presentation/view/filter_bottom_sheet.dart';

import '../../view/my_app_bar.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({Key? key}) : super(key: key);
  var scaffoldKey = GlobalKey<ScaffoldState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 50),
        child: MyAppBar(
          title: 'Category',
          leadingIcon: Icons.add_road_rounded,
          leadingIconPressed: (){
            scaffoldKey.currentState!.showBottomSheet((context) => FilterBottomSheet(onPressed: (){
              scaffoldKey.currentState!.showBottomSheet((context){return Container();}).closed ;
            },)).close;
          },
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(child: DropDownComponent()),
                Expanded(child: DropDownComponent()),
                Expanded(child: DropDownComponent()),
                Expanded(child: DropDownComponent()),
              ],
            ),
          ],
        ),
      ),

    );
  }
}
