part of '../home_screen.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Text(
              "Browse Categories",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: MainColors.blackColor,
              ),
            ),
            const Text(
              "See all",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w700,
                color: MainColors.primaryColor,
                decoration: TextDecoration.underline,
                decorationColor: MainColors.primaryColor,
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            productItem(icon: 'assets/images/car.svg', title: 'Car'),
            productItem(icon: 'assets/images/apart.svg', title: 'Property'),
            productItem(icon: 'assets/images/bike.svg', title: 'Bike'),
            productItem(icon: 'assets/images/job.svg', title: 'Job'),
          ],
        ),
      ],
    );
  }
}

Column productItem({required icon, required title}) {
    return Column(
      children: [
        Container(
          width: 55,
          height: 55,
          decoration: BoxDecoration(
            color: Color(0xFFF6F6F6),
            borderRadius: BorderRadius.circular(100),
          ),
          child: Center(child: SvgPicture.asset(icon, height: 20)),
        ),
        const SizedBox(height: 8),
        Text(
          title,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: MainColors.blackColor,
          ),
        ),
      ],
    );
  }
