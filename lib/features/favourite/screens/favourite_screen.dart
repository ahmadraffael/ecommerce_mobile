
import 'package:ecommerce_mobile/features/favourite/screens/sections/ads_tab.dart';
import 'package:ecommerce_mobile/features/favourite/screens/sections/fav_tab.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_mobile/features/preference/preference.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: MainColors.whiteColor,
        appBar: AppBar(
          centerTitle: true,
          automaticallyImplyLeading: false,
          title: const Text('My Ads'),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(28),
            child: SizedBox(
              height: 30,
              child: TabBar(
                indicatorColor: MainColors.mainColor[1],
                labelColor: MainColors.whiteColor,
                unselectedLabelColor: MainColors.whiteColor.withOpacity(0.5),
                tabs: const [
                  Tab(text: "Ads"),
                  Tab(text: "Favourites"),
                ],
              ),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(),
          child: TabBarView(
            children: [
              AdsTab(),
              FavTab(),
            ],
          ),
        ),
      ),
    );
  }
}
