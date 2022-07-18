import 'package:flutter/material.dart';

class MyMaterialButton extends StatelessWidget {
  final Color color;

  final void Function() onPressed;

  final String text;

  const MyMaterialButton({
    Key? key,
    this.color = Colors.blue,
    required this.onPressed,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: MaterialButton(
        color: color,
        height: 52,
        onPressed: onPressed,
        child: Text(
          text,
          style: Theme.of(context)
              .textTheme
              .headline6!
              .copyWith(
              color: Colors.white,
            fontFamily: 'SemiBold'
          ),
        ),
      ),
    );
  }
}
