part of '../home_screen.dart';

class FeaturedSection extends StatefulWidget {
  const FeaturedSection({super.key});

  @override
  State<FeaturedSection> createState() => _FeaturedSectionState();
}

class _FeaturedSectionState extends State<FeaturedSection> {
    bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Top Picks for You",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: MainColors.blackColor,
          ),
        ),
        const SizedBox(height: 18),
        GridView(
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
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailScreen()),
                );
              },
              child: product(
                image: MainAssets.product2,
                title: 'Nissan March 2016',
                description:
                    'Nissan March 1.2 Bensin-MT 2016 Putih, kondisi aman',
                price: '97.000.000',
              ),
            ),
            product(
              image: MainAssets.product1,
              title: 'iPhone XR',
              description: 'iPhone bekas pemakaian 2 tahun, BH 85% ...',
              price: '2.500.000',
            ),
            product(
              image: MainAssets.product3,
              title: 'Jaket Bomber ...',
              description: 'Jaket bomber clay mith, size M. Bulu kerah ...',
              price: '500.000',
            ),
            product(
              image: MainAssets.product4,
              title: 'Jaket hitam casual',
              description:
                  'Resleting depan full zip. 2 kantong luar samping ...',
              price: '80.000',
            ),
          ],
        ),
        const SizedBox(height: 18),
        Center(
          child: const Text(
            "See more",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w700,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }

  Container product({
    required String image,
    required String title,
    required String description,
    required String price,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: MainColors.whiteColor,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: MainColors.blackColor[800]!),
      ),
      padding: EdgeInsets.all(8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Stack(
                children: [
                  Image.asset(
                    image,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                  Positioned(
                    top: 5,
                    right: 5,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isFavorite = !isFavorite; // toggle
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: MainColors.whiteColor,
                          shape: BoxShape.circle,
                        ),
                        padding: const EdgeInsets.all(4),
                        child: Icon(
                          isFavorite
                              ? Icons.favorite_rounded
                              : Icons.favorite_border_rounded,
                          color: isFavorite
                              ? Colors.red
                              : MainColors.blackColor[800],
                          size: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(
              color: MainColors.blackColor,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 4),
          Text(
            description,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: MainColors.blackColor,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'Rp$price',
            style: TextStyle(
              color: MainColors.blackColor,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

