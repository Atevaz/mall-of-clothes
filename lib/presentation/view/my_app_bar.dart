import 'package:flutter/material.dart';
import 'package:magdsoft_flutter_structure/presentation/styles/colors.dart';
import 'package:magdsoft_flutter_structure/presentation/widget/headline_text.dart';

class MyAppBar extends StatelessWidget {
  final String title;

  final IconData leadingIcon;

  final VoidCallback leadingIconPressed ;

  final IconData actionIcon;

  const MyAppBar({
    Key? key,
    this.title = 'Kashkha',
    this.leadingIcon = Icons.add_shopping_cart_outlined,
    this.actionIcon= Icons.search,
    required this.leadingIconPressed
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: leadingIconPressed,
        icon: Icon(
          leadingIcon,
          color: AppColor.pink,
        ),
      ),
      title: HeadLineText(
        text: title,
        color: AppColor.black,
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            actionIcon,
            color: AppColor.pink,
          ),
        )
      ],
      centerTitle: true,
    );
  }
}
