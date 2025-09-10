import 'package:dotted_line/dotted_line.dart';
import 'package:ecommerce_mobile/features/home/screen/detail_screen/booking_modal.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_mobile/features/preference/preference.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  void Booking() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      builder: (context) {
        return BookingModal();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 28),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back_ios_new_rounded, size: 22),
                    ),
                    Row(
                      children: [
                        Icon(Icons.share_outlined, size: 22),
                        const SizedBox(width: 10),
                        Icon(Icons.favorite_border_rounded, size: 22),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 18),
              Container(
                decoration: BoxDecoration(
                  color: MainColors.primaryColor.withOpacity(0.05),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: Container(
                      child: Image.asset(
                        MainAssets.product2,
                        fit: BoxFit.cover,
                      ),
                      width: double.infinity,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [Container()]),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.only(
                                left: 6,
                                top: 4,
                                bottom: 4,
                                right: 10,
                              ),
                              decoration: BoxDecoration(
                                color: MainColors.mainColor[1],
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(Icons.bolt, size: 18),
                                  Text(
                                    'FEATURED',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 6),
                            Text(
                              'Authorized Dealer',
                              style: TextStyle(
                                color: MainColors.primaryColor,
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        Text(
                          'Rp97.000.000',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: MainColors.blackColor,
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(height: 12),
                        Text(
                          'Nissan March 2016',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: MainColors.blackColor,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 18),
                  SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: MainColors.primaryColor.withOpacity(0.25),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: MainColors.primaryColor.withOpacity(
                                    0.2,
                                  ),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    bottomLeft: Radius.circular(8),
                                  ),
                                ),
                                child: Icon(
                                  Icons.verified_user,
                                  size: 18,
                                  color: MainColors.primaryColor,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8,
                                ),
                                child: Text(
                                  'Mobil Bergaransi',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          decoration: BoxDecoration(
                            color: MainColors.primaryColor.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: MainColors.primaryColor.withOpacity(
                                    0.2,
                                  ),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    bottomLeft: Radius.circular(8),
                                  ),
                                ),
                                child: Icon(
                                  Icons.build,
                                  size: 18,
                                  color: MainColors.primaryColor,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8,
                                ),
                                child: Text(
                                  'Gratis Perawatan',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  DottedLine(
                    dashLength: 6,
                    dashGapLength: 4,
                    lineThickness: 2,
                    dashColor: MainColors.blackColor[800]!,
                  ),
                  const SizedBox(height: 24),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Description',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: MainColors.blackColor,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 12),
                        Text(
                          'Nissan March 1.2 Bensin-MT 2016 Putih, kondisi mulus, tangan pertama, service rutin, pajak hidup, siap pakai!\n\n'
                          'Kondisi interior masih bagus, AC dingin, ban baru diganti, mobil siap jalan jauh',
                          style: TextStyle(
                            color: MainColors.blackColor[600],
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  DottedLine(
                    dashLength: 6,
                    dashGapLength: 4,
                    lineThickness: 2,
                    dashColor: MainColors.blackColor[800]!,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        decoration: BoxDecoration(color: MainColors.whiteColor),
        child: Row(
          children: [
            Expanded(
              child: InkWell(
                borderRadius: BorderRadius.circular(12),
                onTap: () {
                  Booking();
                },
                child: Container(
                  height: 44,
                  decoration: BoxDecoration(
                    color: MainColors.primaryColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.date_range, color: Colors.white, size: 20),
                      const SizedBox(width: 6),
                      Text(
                        'Book Test Drive',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(width: 8),
            InkWell(
              onTap: () {},
              child: Container(
                height: 44,
                width: 44,
                decoration: BoxDecoration(
                  color: MainColors.whiteColor,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: MainColors.primaryColor, width: 2),
                ),
                child: Icon(
                  Icons.chat_bubble_outline_outlined,
                  color: MainColors.primaryColor,
                  size: 20,
                ),
              ),
            ),
            const SizedBox(width: 8),
            InkWell(
              onTap: () {},
              child: Container(
                height: 44,
                width: 44,
                decoration: BoxDecoration(
                  color: MainColors.whiteColor,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: MainColors.primaryColor, width: 2),
                ),
                child: Icon(
                  Icons.call_outlined,
                  color: MainColors.primaryColor,
                  size: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
