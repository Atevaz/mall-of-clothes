import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

import '../styles/colors.dart';
import '../widget/medium_text.dart';

class BottomNavBar extends StatefulWidget {
  BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  PageController pageController = PageController();

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: BottomNavyBar(
          selectedIndex: currentIndex,
          showElevation: true, // use this to remove appBar's elevation
          onItemSelected: (index) => setState(() {
            currentIndex = index;
            pageController.animateToPage(currentIndex,
                duration: Duration(milliseconds: 300), curve: Curves.ease);
          }),
          items: [
            BottomNavyBarItem(
              icon: Icon(
                Icons.home_rounded,
              ),
              title: MediumText( text: 'Home',color: AppColor.pink,),
              activeColor: AppColor.pink,
              inactiveColor: Colors.grey,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.apps),
              title: MediumText( text: 'Category',color: AppColor.pink,),
              activeColor: AppColor.pink,
              inactiveColor: Colors.grey,
              textAlign: TextAlign.center,),
            BottomNavyBarItem(
                icon: Icon(Icons.message),
                title: MediumText( text: 'Home',color: AppColor.pink,),
                activeColor: AppColor.pink,
                inactiveColor: Colors.grey,
                textAlign: TextAlign.center
            ),
            BottomNavyBarItem(
                icon: Icon(
                  Icons.person,
                ),
                title: MediumText( text: 'Me',color: AppColor.pink,),
                activeColor: AppColor.pink,
                inactiveColor: Colors.grey,
                textAlign: TextAlign.center
            ),
          ],
        ),
      ),
    );
  }
}
