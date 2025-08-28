import 'package:ecommerce_mobile/features/home/screen/home_screen/home_screen.dart';
import 'package:ecommerce_mobile/features/home/screen/main_screen/main_screen.dart';
import 'package:ecommerce_mobile/features/preference/assets.dart';
import 'package:ecommerce_mobile/features/preference/color.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_mobile/features/preference/custom_icon.dart';

class OnBoarding1 extends StatefulWidget {
  const OnBoarding1({super.key});

  @override
  State<OnBoarding1> createState() => _OnBoarding1State();
}

class _OnBoarding1State extends State<OnBoarding1> {

  final _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragEnd: (details) {
        if (details.primaryVelocity! > 0) {
        } else if (details.primaryVelocity! < 0) {
          Navigator.pop(context);
        }
      },
      child: Scaffold(
        body: Column(
          children: [
            Flexible(
              flex: 7,
              child: Container(
                decoration: BoxDecoration(
                  color: MainColors.primaryColor,
                  image: DecorationImage(
                    image: AssetImage(MainAssets.chatimeOnboarding),
                    alignment: Alignment(0, 0.5),
                    scale: 1,
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 3,
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 50),
                  decoration: BoxDecoration(color: MainColors.whiteColor),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Column(
                        children: [
                          Text('What is your firstname?', style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                          )),
                          SizedBox(height: 16),
                          TextFormField(
                            controller: _nameController,
                            decoration: InputDecoration(
                              hintText: 'Submit your name'
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 24),
                      ElevatedButton(
                        onPressed: () {
                          // String nameController = _nameController.text;
                          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => MainScreen()),
                          (route) => false,
                          );
                        },
                        child: Text('lets Get continue',
                            style: TextStyle(fontSize: 16,
                                fontWeight: FontWeight.w600)),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}