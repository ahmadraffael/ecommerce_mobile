part of '../home_screen.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key, required this.name});

  final String? name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Icon(Icons.location_on, color: Colors.black87),
            const SizedBox(width: 8),
            const Text(
              "Cildeug, Tangerang",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            const Icon(Icons.keyboard_arrow_down),
          ],
        ),
        const SizedBox(height: 24),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            border: Border.all(color: MainColors.blackColor[800]!),
            borderRadius: BorderRadius.circular(12),
          ),
          child: TextField(
            decoration: InputDecoration(
              icon: Icon(
                Icons.search,
                color: MainColors.blackColor[200],
                size: 22,
              ),
              hintStyle: TextStyle(
                fontSize: 12,
                color: MainColors.blackColor[800],
              ),
              hintText: "Find cars, mobile phones and more...",
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}
