import 'package:ecommerce_mobile/features/home/screen/main_screen/main_screen.dart';
import 'package:ecommerce_mobile/features/onboarding/on_boarding1.dart';
import 'package:ecommerce_mobile/features/preference/assets.dart';
import 'package:ecommerce_mobile/features/preference/color.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(MainAssets.olxLogo, width: 80, color: MainColors.primaryColor,),
              SizedBox(height: 4,),
              Text('Pusatnya nge-deal!', style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: MainColors.blackColor[600]
              ),
              ),
              SizedBox(height: 18,),
              Align(
                alignment: Alignment.center,
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 400),
                  child: OutlinedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.email_outlined, color: MainColors.blackColor),
                    label: Text(
                      "Continue with Email",
                      style: TextStyle(color: MainColors.blackColor),
                    ),
                    style: OutlinedButton.styleFrom(
                      minimumSize: Size.fromHeight(50), // full width otomatis
                      side: BorderSide(color: Colors.grey),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 18,),
              Align(
                alignment: Alignment.center,
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 400),
                  child: OutlinedButton.icon(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => OnBoarding1()));
                    },
                    icon: SvgPicture.asset(
                      MainAssets.googleSvg, height: 18, width: 18,
                    ),
                    label: Text(
                      "Continue with Google",
                      style: TextStyle(color: MainColors.blackColor),
                    ),
                    style: OutlinedButton.styleFrom(
                      minimumSize: Size.fromHeight(50), // full width otomatis
                      side: BorderSide(color: Colors.grey),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 18,),
              Align(
                alignment: Alignment.center,
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 400),
                  child: OutlinedButton.icon(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      MainAssets.appleSvg, height: 18, width: 18,
                    ),
                    label: Text(
                      "Continue with Apple",
                      style: TextStyle(color: MainColors.blackColor),
                    ),
                    style: OutlinedButton.styleFrom(
                      minimumSize: Size.fromHeight(50), // full width otomatis
                      side: BorderSide(color: Colors.grey),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 38,),
              Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already have an account? "),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MainScreen()));
                  },
                  child: const Text(
                    "Sign In",
                    style: TextStyle(
                      color: MainColors.primaryColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            ],
          )
        ),
      ),
    );
  }
}