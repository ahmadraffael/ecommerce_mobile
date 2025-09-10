import 'package:ecommerce_mobile/features/preference/color.dart';
import 'package:ecommerce_mobile/features/splash/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        fontFamily: 'Inter',
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 14),
            backgroundColor: MainColors.primaryColor,
            foregroundColor: MainColors.whiteColor,
            textStyle: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        // inputDecorationTheme: InputDecorationTheme(
        //   border: OutlineInputBorder(
        //     borderRadius: BorderRadius.circular(10),
        //     borderSide: BorderSide.none,
        //   ),
        //   filled: true,
        //   fillColor: MainColors.greyColor,
        //   hintStyle: TextStyle(
        //     color: MainColors.greyColor[200],
        //     fontWeight: FontWeight.w400,
        //   ),
        // ),
        appBarTheme: AppBarTheme(
          toolbarHeight: 50,
          backgroundColor: MainColors.primaryColor,
          surfaceTintColor: MainColors.primaryColor,
          titleTextStyle: TextStyle(
            color: MainColors.whiteColor,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
          iconTheme: IconThemeData(size: 20, color: MainColors.whiteColor),
        ),

      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
