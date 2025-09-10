import 'package:ecommerce_mobile/features/home/screen/main_screen/main_screen.dart';
import 'package:ecommerce_mobile/features/preference/preference.dart';
import 'package:flutter/material.dart';

class BookedScreen extends StatelessWidget {
  const BookedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainColors.whiteColor,
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(MainAssets.booked),
              Text('Booked Succesfully', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              const SizedBox(height: 4,),
              Text('Booking sent, chat seller for details.', style: TextStyle(fontSize: 15, color: MainColors.blackColor[600]),),
              const SizedBox(height: 20,),
              Material(
                color: MainColors.primaryColor,
                borderRadius: BorderRadius.circular(12),
                child: InkWell(
                  borderRadius: BorderRadius.circular(12),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const MainScreen(initialIndex: 1,)));
                  },
                  hoverColor: MainColors.primaryColor[200],
                  child: Container(
                    height: 38,
                    width: 134,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Message seller',
                            style: TextStyle(
                              fontWeight: FontWeight.w500, color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                ),
              ),
              const SizedBox(height: 10,),
              Material(
                color: Colors.white, 
                borderRadius: BorderRadius.circular(12),
                child: InkWell(
                  borderRadius: BorderRadius.circular(12),
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 38,
                    width: 134,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: MainColors.primaryColor, width: 1.5),
                    ),
                    alignment: Alignment.center,
                    child: const Text('Back', style: TextStyle( fontWeight: FontWeight.bold, color: MainColors.primaryColor,),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40,),
            ],
          ),
        ),
      )
    );
  }
}