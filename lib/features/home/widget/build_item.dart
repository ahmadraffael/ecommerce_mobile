import 'package:ecommerce_mobile/features/preference/assets.dart';
import 'package:ecommerce_mobile/features/preference/color.dart';
import 'package:flutter/material.dart';

class BuildItem extends StatelessWidget {
  final String title;
  final String imagePath;
  final String pack;
  final String price;

  const BuildItem({
    Key? key,
    required this.title,
    required this.imagePath,
    required this.pack,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: MainColors.primaryColor[200],
                ),
                child: Image.asset(imagePath, width: 50),
              ),
              SizedBox(width: 18),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(pack),
                  ],
                ),
              ),
              Text(
                price,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
        Divider(thickness: 0.5, color: MainColors.blackColor[800]),
      ],
    );
  }
}

Column buildItem() {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: MainColors.primaryColor[200],
              ),
              child: Image.asset(MainAssets.food1, width: 50),
            ),
            SizedBox(width: 18),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Quinoa fruit salad',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  Text('2 Packs'),
                ],
              ),
            ),
            Text(
              'Rp20.000',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
      Divider(thickness: 0.5, color: MainColors.blackColor[800]),
    ],
  );
}
