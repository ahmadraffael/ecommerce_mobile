import 'package:ecommerce_mobile/features/favourite/screens/favourite_screen.dart';
import 'package:ecommerce_mobile/features/home/screen/message_screen/message_screen.dart';
import 'package:ecommerce_mobile/features/home/screen/home_screen/home_screen.dart';
import 'package:ecommerce_mobile/features/home/screen/post_screen/post_screen.dart';
import 'package:ecommerce_mobile/features/preference/color.dart';
import 'package:ecommerce_mobile/features/profile/profile_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  final int initialIndex; 

  const MainScreen({super.key, this.initialIndex = 0});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late int selectedIndex;

  @override
  void initState() {
    super.initState();
    selectedIndex = widget.initialIndex; // pakai index dari parameter
  }

  List<Widget> screens = [
    HomeScreen(name: ''),
    MessageScreen(),
    PostScreen(),
    FavouriteScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: selectedIndex,
        onTap: (int index) {
          setState(() {
            selectedIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: MainColors.primaryColor,
        selectedFontSize: 10,
        unselectedFontSize: 10,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'EXPLORE'),
          BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_outline_rounded), label: 'CHAT'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'POST'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_outline_rounded), label: 'MY ADS'),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline_rounded), label: 'PROFILE'),
        ],
      ),
    );
  }
}

