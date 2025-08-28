import 'package:flutter/material.dart';
import 'package:ecommerce_mobile/features/preference/color.dart';

class AppBackButton extends StatelessWidget {
  const AppBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pop(context),
      child: Container(
        margin: EdgeInsets.all(11),
        alignment: Alignment.center,
        child: Icon(Icons.arrow_back),
        decoration: BoxDecoration(
          color: MainColors.whiteColor,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}