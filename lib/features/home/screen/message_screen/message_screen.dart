import 'package:ecommerce_mobile/features/preference/preference.dart';
import 'package:ecommerce_mobile/features/home/screen/message_screen/sections/tab_bar.dart';
import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: MainColors.whiteColor,
        appBar: AppBar(
          centerTitle: true,
          automaticallyImplyLeading: false,
          title: const Text('Inbox'),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(28), // tinggi khusus TabBar
            child: SizedBox(
              height: 30,
              child: TabBar(
                indicatorColor: MainColors.mainColor[1],
                labelColor: MainColors.whiteColor,
                unselectedLabelColor: MainColors.whiteColor.withOpacity(0.5),
                tabs: const [
                  Tab(text: "All"),
                  Tab(text: "Buying"),
                  Tab(text: "Selling"),
                ],
              ),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: const TabBarView(
            children: [
              AllMessagesTab(),
              BuyingMessagesTab(),
              SellingMessagesTab()
            ],
          ),
        ),
      ),
    );
  }
}
