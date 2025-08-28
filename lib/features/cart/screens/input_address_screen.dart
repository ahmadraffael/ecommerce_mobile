import 'package:flutter/material.dart';

class InputAddress extends StatelessWidget {
  const InputAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 24),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 28),
            height: 4,
            width: 48,
            decoration: BoxDecoration(
              color: Colors.grey[400],
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          buildInput(title: 'Delivery Address', hintText: 'Address'),
          buildInput(title: 'Number We Can Call', hintText: 'Phone number'),
        ],
      ),
    );
  }

  Widget buildInput({required String title, required String hintText}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30.0),
      child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(
                  hintText: hintText,
                ),
              ),
            ],
          ),
    );
  }
}