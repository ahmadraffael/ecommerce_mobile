part of '../home_screen.dart';

class RecomendedComboSection extends StatelessWidget {
  const RecomendedComboSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Recommended Combo',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 15),
        Row(
          children: [
            FoodItem(
              title: 'Honey lime combo',
              imagePath: MainAssets.food1,
              price: 'Rp50.000',
            ),
            SizedBox(width: 15),
            FoodItem(
              title: 'Fruit lime combo',
              imagePath: MainAssets.food2,
              price: 'Rp30.000',
            ),
          ],
        ),
      ],
    );
  }
}
