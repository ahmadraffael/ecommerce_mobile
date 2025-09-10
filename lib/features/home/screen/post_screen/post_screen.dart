import 'package:flutter/material.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameC = TextEditingController();
    final TextEditingController descC = TextEditingController();
    final TextEditingController priceC = TextEditingController();
    final TextEditingController locationC = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Post Barang"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Center(
                child: Icon(Icons.camera_alt, size: 40, color: Colors.grey),
              ),
            ),
            const SizedBox(height: 16),

            // Nama Barang
            TextField(
              controller: nameC,
              decoration: const InputDecoration(
                labelText: "Nama Barang",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),

            // Deskripsi
            TextField(
              controller: descC,
              maxLines: 3,
              decoration: const InputDecoration(
                labelText: "Deskripsi",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),

            // Harga
            TextField(
              controller: priceC,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Harga",
                prefixText: "Rp ",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),

            // Lokasi
            TextField(
              controller: locationC,
              decoration: const InputDecoration(
                labelText: "Lokasi",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 24),

            // Tombol Publish
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if (nameC.text.isNotEmpty &&
                      descC.text.isNotEmpty &&
                      priceC.text.isNotEmpty &&
                      locationC.text.isNotEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Barang diposting: ${nameC.text}")),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Lengkapi semua data dulu!")),
                    );
                  }
                },
                child: const Text("Publish"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
