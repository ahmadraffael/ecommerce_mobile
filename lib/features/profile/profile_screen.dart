import 'package:ecommerce_mobile/features/preference/preference.dart';
import 'package:ecommerce_mobile/features/profile/widget/build_menu.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainColors.whiteColor,
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(color: MainColors.blackColor),
        ),
        backgroundColor: MainColors.whiteColor,
        elevation: 0,
        iconTheme: IconThemeData(color: MainColors.blackColor),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.grey.shade300,
                          width: 1,
                        ),
                      ),
                      child: const CircleAvatar(
                        radius: 45,
                        backgroundImage: AssetImage(MainAssets.profile6),
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Faozan',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    const Text(
                      'ahmadrf921@gmail.com',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              const Text(
                "Profile",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
              const SizedBox(height: 12),
              buildMenuItem(Icons.person, "Account details"),
              buildMenuItem(Icons.history, "Transaction history"),
              buildMenuItem(Icons.description, "Documents and statements"),
              buildMenuItem(Icons.lock, "Change password"),

              const SizedBox(height: 24),

              const Text(
                "Connected accounts",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
              const SizedBox(height: 12),
              buildMenuItem(Icons.business, "Swift Solutions"),
            ],
          ),
        ),
      ),
    );
  }
}
