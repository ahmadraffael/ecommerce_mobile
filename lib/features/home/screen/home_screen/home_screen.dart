import 'package:ecommerce_mobile/features/preference/preference.dart';
import 'package:ecommerce_mobile/features/home/screen/detail_screen/detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

part 'sections/header_section.dart';
part 'sections/featured_section.dart';
part 'sections/categories_section.dart';
part 'sections/banner_section.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key, required this.name});

  final String? name;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainColors.whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 28, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeaderSection(name: ''),
                const SizedBox(height: 24),
                BannerSection(),
                const SizedBox(height: 24),
                CategoriesSection(),
                const SizedBox(height: 30),
                FeaturedSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  


}
