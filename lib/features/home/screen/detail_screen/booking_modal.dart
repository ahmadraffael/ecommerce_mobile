import 'package:flutter/services.dart';
import 'package:ecommerce_mobile/features/home/screen/booked_screen/booked_screen.dart';
import 'package:ecommerce_mobile/features/preference/color.dart';
import 'package:flutter/material.dart';

class BookingModal extends StatefulWidget {
  const BookingModal({super.key});

  @override
  State<BookingModal> createState() => _BookingModalState();
}

class _BookingModalState extends State<BookingModal> {
  final TextEditingController _dateController = TextEditingController();
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      setState(() {
        _dateController.text = "${picked.day}/${picked.month}/${picked.year}";
      });
    }
    ;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 24),
        child: Column(
          children: [
            SizedBox(
              width: 40,
              child: Divider(
                thickness: 4,
                color: MainColors.blackColor[900],
                radius: BorderRadius.circular(12),
              ),
            ),
            const SizedBox(height: 12),
            Text(
              'Book Test Drive',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 14),
            buildInput(
              title: 'Full Name',
              inputType: TextInputType.text,
              formatter: [
                FilteringTextInputFormatter.allow(RegExp(r"[a-zA-Z\s]")),
              ],
            ),
            buildInput(
              title: 'Phone Number',
              inputType: TextInputType.number,
              formatter: [FilteringTextInputFormatter.digitsOnly],
            ),
            buildDateInput(title: 'Booking Date', controller: _dateController),
            Material(
              color: MainColors.primaryColor,
              borderRadius: BorderRadius.circular(12),
              child: InkWell(
                borderRadius: BorderRadius.circular(12),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BookedScreen(),
                    ),
                  );
                },
                hoverColor:
                    MainColors.primaryColor[200], // efek gelap saat hover
                child: Container(
                  height: 44,
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.date_range, color: Colors.white, size: 20),
                      const SizedBox(width: 6),
                      const Text(
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
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }

  Padding buildInput({
    required String title,
    required TextInputType inputType,
    List<TextInputFormatter>? formatter,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: TextStyle(fontWeight: FontWeight.w600)),
          const SizedBox(height: 6),
          TextFormField(
            keyboardType: inputType,
            inputFormatters: formatter,
            style: TextStyle(fontSize: 14),
            decoration: InputDecoration(
              isDense: true,
              filled: true,
              fillColor: Colors.white,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 10,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: MainColors.blackColor[800]!),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Colors.blue),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Padding buildDateInput({
    required String title,
    required TextEditingController controller,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
          const SizedBox(height: 6),
          TextFormField(
            controller: controller,
            readOnly: true,
            onTap: () => _selectDate(context),
            style: const TextStyle(fontSize: 14),
            decoration: InputDecoration(
              hintText: "Pick date",
              suffixIcon: const Icon(Icons.calendar_today),
              isDense: true,
              filled: true,
              fillColor: Colors.white,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 10,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: MainColors.blackColor[800]!),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: Colors.blue),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
