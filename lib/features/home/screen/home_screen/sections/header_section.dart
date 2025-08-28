part of '../home_screen.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({
    super.key,
    required this.name,
  });

  final String? name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(cusicon.sort),
            Icon(cusicon.cart, color: MainColors.primaryColor, size: 25),
          ],
        ),
        SizedBox(height: 30),
        Text(
          'Hello $name, What fruit salad combo do you want today?',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 30),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Search something',
                      prefixIcon: Icon(
                        cusicon.search,
                        color: MainColors.greyColor[200],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 18),
                Icon(cusicon.setting),
              ],
            ),
      ],
    );
  }
}

