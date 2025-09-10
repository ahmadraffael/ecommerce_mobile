import 'package:flutter/material.dart';
import 'package:ecommerce_mobile/features/preference/preference.dart';

Container product({required String image, required String title, required String description, required String price}) {
    return Container(
      decoration: BoxDecoration(
        color: MainColors.whiteColor,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: MainColors.blackColor[800]!)
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
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          color: MainColors.whiteColor, shape: BoxShape.circle,
                        ),
                        padding: const EdgeInsets.all(4),
                        child: Icon(
                          Icons.favorite, color: MainColors.mainColor[4], size: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text( title , style: TextStyle(
            color: MainColors.blackColor, fontSize: 16, fontWeight: FontWeight.w600
          ), maxLines: 1, overflow: TextOverflow.ellipsis,),
          const SizedBox(height: 4),
          Text( description , style: TextStyle(
            color: MainColors.blackColor, fontSize: 12, fontWeight: FontWeight.w400
          ), maxLines: 2, overflow: TextOverflow.ellipsis,),
          const SizedBox(height: 10),
          Text('Rp$price', style: TextStyle(
            color: MainColors.blackColor, fontSize: 14, fontWeight: FontWeight.bold
          ),),
        ],
      ),
    );
  }