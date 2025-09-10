import 'package:flutter/material.dart';
import 'package:ecommerce_mobile/features/preference/preference.dart';
import 'package:ecommerce_mobile/features/favourite/screens/widget/product.dart';
import 'package:ecommerce_mobile/features/home/screen/detail_screen/detail_screen.dart';

class FavTab extends StatelessWidget {
  const FavTab({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: GridView(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            // biar fleksibel tinggi, kasih childAspectRatio mendekati 0.75
            childAspectRatio: 0.61,
          ),
          children: [
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen()));
              },
              child: product(image: MainAssets.product2, title: 'Nissan March 2016', description: 'Nissan March 1.2 Bensin-MT 2016 Putih, kondisi ...', price: '97.000.000'),
            ),
            product(image: MainAssets.product1, title: 'iPhone XR', description: 'iPhone bekas pemakaian 2 tahun, BH 85% ...', price: '2.500.000'),
            product(image: MainAssets.product3, title: 'Jaket Bomber ...', description: 'Jaket bomber clay mith, size M. Bulu kerah ...', price: '500.000'),
            product(image: MainAssets.product4, title: 'Jaket hitam casual', description: 'Resleting depan full zip. 2 kantong luar samping ...', price: '80.000'),
            product(image: MainAssets.product5, title: 'iron man MK6', description: 'Di jual pajangan dada iron man 41 cm MK6 maaf ...', price: '250.000'),
            product(image: MainAssets.product6, title: 'Macbook Air M2', description: 'kondisi 90%, pemakaian untuk editing, 8/256gb ...', price: '10.500.000'),
          ],
        ),
      ),
    );
  }
}