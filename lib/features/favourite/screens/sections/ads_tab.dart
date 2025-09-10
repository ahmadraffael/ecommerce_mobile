import 'package:ecommerce_mobile/features/preference/preference.dart';
import 'package:flutter/material.dart';

class AdsTab extends StatelessWidget {
  const AdsTab({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainColors.whiteColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              Image.asset(MainAssets.addPost),
              Text('No post yet', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              const SizedBox(height: 4,),
              Text('You haven’t posted anything.\nTap + to add one', style: TextStyle(fontSize: 15, color: MainColors.blackColor[600]), textAlign: TextAlign.center,),
          ],
        ),
      )
    );
  }
}