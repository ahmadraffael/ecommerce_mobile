import 'input_address_screen.dart';
import 'package:ecommerce_mobile/features/preference/assets.dart';
import 'package:ecommerce_mobile/features/preference/color.dart';
import 'package:ecommerce_mobile/components/app_back_button.dart';
import 'package:ecommerce_mobile/features/home/widget/build_item.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  void showModal() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      builder: (context) {
        return InputAddress();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Breakfast'),
        centerTitle: true,
        leading: AppBackButton(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
        child: ListView(
          children: [
            BuildItem(
              title: 'Quinoa Fruit Salad',
              imagePath: MainAssets.food1,
              pack: '2 Packs',
              price: 'Rp20.000',
            ),
            BuildItem(
              title: 'Majot',
              imagePath: MainAssets.food2,
              pack: '2 Packs',
              price: 'Rp20.000',
            ),
            BuildItem(
              title: 'Quinoa Fruit Salad',
              imagePath: MainAssets.food1,
              pack: '2 Packs',
              price: 'Rp20.000',
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
        child: Row(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Total',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                Text(
                  '60,000',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(width: 25),
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  showModal();
                },
                child: Text('Checkout'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
