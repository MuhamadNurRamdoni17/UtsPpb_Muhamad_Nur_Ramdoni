import 'package:flutter/material.dart';
import '../models/drink_model.dart';

class DetailPage extends StatelessWidget {
  final DrinkModel drink;

  const DetailPage({super.key, required this.drink});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: const Color(0xffE8F4FF),

      body: Column(
        children: [
          Stack(
            children: [
              Hero(
                tag: drink.image,
                child: Container(
                  width: double.infinity,
                  height: 320,
                  color: Colors.white,
                  padding: const EdgeInsets.all(18),

                  // Foto tidak zoom!
                  child: Image.asset(drink.image, fit: BoxFit.contain),
                ),
              ),

              // Tombol Back
              Positioned(
                top: 40,
                left: 16,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back),
                    color: Colors.black,
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
              ),
            ],
          ),

          Expanded(
            child: Container(
              padding: const EdgeInsets.all(22),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
              ),

              child: ListView(
                children: [
                  // Judul
                  Text(
                    drink.name,
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 10),

                  // Rating
                  Row(
                    children: [
                      Icon(Icons.star, color: color.primary, size: 22),
                      Icon(Icons.star, color: color.primary, size: 22),
                      Icon(Icons.star, color: color.primary, size: 22),
                      Icon(Icons.star, color: color.primary, size: 22),
                      const Icon(
                        Icons.star_half,
                        color: Colors.amber,
                        size: 22,
                      ),
                      const SizedBox(width: 6),
                      Text(
                        "${drink.rating} • Favorit",
                        style: TextStyle(color: Colors.grey.shade600),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // Deskripsi
                  Text(
                    drink.description,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey.shade700,
                      height: 1.5,
                    ),
                  ),

                  const SizedBox(height: 30),

                  Container(
                    padding: const EdgeInsets.all(18),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade50,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Row(
                      children: [
                        Text(
                          "Rp ${drink.price}",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: color.primary,
                          ),
                        ),

                        const Spacer(),

                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: color.primary,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 28,
                              vertical: 14,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),

                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  "Pesanan '${drink.name}' berhasil dipesan!",
                                  style: const TextStyle(color: Colors.white),
                                ),
                                backgroundColor: color.primary,
                                duration: const Duration(seconds: 2),
                              ),
                            );
                          },

                          child: const Text(
                            "Pesan Sekarang",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
