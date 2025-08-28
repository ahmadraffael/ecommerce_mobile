part of '../home_screen.dart';

class FilteredItemSection extends StatelessWidget {
  const FilteredItemSection({super.key, required this.category});

  final List<String> category;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 25,
          child: ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return Text(
                category[index],
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: Colors.grey,
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(width: 26);
            },
            itemCount: category.length,
          ),
        ),
        SizedBox(height: 30),
        SizedBox(
          height: 170,
          child: ListView(
            clipBehavior: Clip.none,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: [
              FoodItem(
                title: 'Fruit combo',
                imagePath: MainAssets.food2,
                price: 'Rp35.000',
              ),
              SizedBox(width: 16),
              FoodItem(
                title: 'Honey lime combo',
                imagePath: MainAssets.food1,
                price: 'Rp35.000',
              ),
              SizedBox(width: 16),
              FoodItem(
                title: 'Honey lime combo',
                imagePath: MainAssets.food1,
                price: 'Rp35.000',
              ),
              SizedBox(width: 16),
              FoodItem(
                title: 'Honey lime combo',
                imagePath: MainAssets.food1,
                price: 'Rp35.000',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
