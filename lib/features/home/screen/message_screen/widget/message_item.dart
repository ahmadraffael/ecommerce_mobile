import 'package:flutter/material.dart';
import 'package:ecommerce_mobile/features/preference/preference.dart';

Widget messageItem({required String photo, required username, required lastChat, required time}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 16),
    child: InkWell(
      onTap: () {},
      child: Row(
        children: [
          CircleAvatar(
            radius: 24,
            backgroundImage: AssetImage(photo),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(username, style: const TextStyle(fontWeight: FontWeight.bold)),
                    Text(lastChat, style: TextStyle(color: MainColors.blackColor[800])),
                  ],
                ),
                Text(time, style: TextStyle(color: MainColors.blackColor[800])),
              ],
            ),
          )
        ],
      ),
    ),
  );
}