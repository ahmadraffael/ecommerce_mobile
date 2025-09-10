import 'package:ecommerce_mobile/features/preference/color.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_mobile/features/home/screen/detail_screen/detail_screen.dart';


class FoodItem extends StatelessWidget {
  final String title;
  final String imagePath;
  final String price;

  const FoodItem({
    Key? key,
    required this.title,
    required this.imagePath,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color oren = Color(0xffFFA451);

    return Container(
      decoration: BoxDecoration(
        color: MainColors.whiteColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: MainColors.blackColor[200]!.withOpacity(0.2),
            spreadRadius: 0,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          InkWell(
            onTap: (){
              Navigator.push( context, MaterialPageRoute(builder: (context) => const DetailScreen()), );
            },
            child: Image.asset(imagePath, width: 70, height: 70),
          ),
          SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                children: [
                  Text(
                    price,
                    style: TextStyle(color: MainColors.primaryColor),
                  ),
                ],
              ),

              const SizedBox(width: 38.0),

              Container(
                width: 24,
                height: 24,
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: MainColors.primaryColor[200],
                ),
                child: Icon(
                  Icons.add,
                  size: 20,
                  color: MainColors.primaryColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}