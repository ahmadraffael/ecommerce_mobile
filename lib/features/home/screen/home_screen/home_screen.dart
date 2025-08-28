import 'package:ecommerce_mobile/features/preference/preference.dart';
import 'package:ecommerce_mobile/features/home/widget/food_item.dart';
import 'package:ecommerce_mobile/components/app_back_button.dart';

import 'package:flutter/material.dart';

part 'sections/header_section.dart';
part 'sections/recomended_combo_section.dart';
part 'sections/filtered_item_section.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key, required this.name});

  final String? name;
  final List<String> category = [
    'Hottest',
    'Popular',
    'Top',
    'Most Liked',
    'Recently Added',
    'Newest',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 28, horizontal: 20), // sekali di sini
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Lokasi
            Row(
              children: [
                const Icon(Icons.location_on, color: Colors.black87),
                const SizedBox(width: 8),
                const Text(
                  "Menteng, Jakarta Pusat",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Icon(Icons.keyboard_arrow_down),
              ],
            ),
            const SizedBox(height: 20),
            // Searchbarnya
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                border: Border.all(
                  color: MainColors.blackColor[800]!,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.search, color: MainColors.blackColor[400], size: 22,),
                  hintStyle: const TextStyle(fontSize: 14),
                  hintText: "Find cars, mobile phones and more...",
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(height: 20,),

          ],
        ),
      ),
    );
  }
}

