import 'package:flutter/material.dart';

  Widget buildMenuItem(IconData icon, String text) {
    return Column(
      children: [
        ListTile(
          leading: Icon(icon, size: 18,),
          title: Text(text),
          trailing: const Icon(Icons.chevron_right, color: Colors.grey),
          onTap: () {},
        ),
        const Divider(height: 1),
      ],
    );
  }