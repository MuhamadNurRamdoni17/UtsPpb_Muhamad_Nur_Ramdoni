import 'package:flutter/material.dart';
import 'grid_page.dart';
import '../models/drink_model.dart';
import 'detail_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String searchQuery = "";

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final color = Theme.of(context).colorScheme;

    // Filter list minuman
    final filteredDrinks =
        drinkList
            .where(
              (d) => d.name.toLowerCase().contains(searchQuery.toLowerCase()),
            )
            .toList();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Image.asset("assets/drinks/download.png", height: 40),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 🔍 SEARCH BAR
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextField(
                  onChanged: (val) {
                    setState(() {
                      searchQuery = val;
                    });
                  },
                  decoration: const InputDecoration(
                    icon: Icon(Icons.search),
                    hintText: "Cari minuman...",
                    border: InputBorder.none,
                  ),
                ),
              ),

              const SizedBox(height: 25),

              // Banner
              Container(
                height: 180,
                margin: const EdgeInsets.only(bottom: 20),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        "assets/drinks/banner.png",
                        width: double.infinity,
                        height: 180,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.blueAccent.withOpacity(0.25),
                      ),
                    ),
                    const Positioned(
                      left: 16,
                      bottom: 22,
                      child: Text(
                        "Promo Spesial Hari Ini!",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          shadows: [
                            Shadow(
                              blurRadius: 8,
                              color: Colors.black54,
                              offset: Offset(1, 1),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              // Header Minuman Populer
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Minuman Populer",
                        style: TextStyle(
                          fontSize: 18,
                          letterSpacing: 0.3,
                          fontWeight: FontWeight.bold,
                          color: color.primary,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "Pilihan terbaik hari ini",
                        style: TextStyle(color: Colors.grey.shade600),
                      ),
                    ],
                  ),
                  const Spacer(),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: color.primary,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const GridPage()),
                      );
                    },
                    child: const Text("Lihat Semua"),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // LIST POPULER (Filtered)
              SizedBox(
                height: size.height * 0.28,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children:
                      filteredDrinks.take(5).map((d) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => DetailPage(drink: d),
                              ),
                            );
                          },
                          child: Container(
                            width: 200,
                            margin: const EdgeInsets.only(right: 15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.blue.shade100,
                                  blurRadius: 6,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                              image: DecorationImage(
                                image: AssetImage(d.image),
                                fit: BoxFit.cover,
                              ),
                            ),
                            alignment: Alignment.bottomLeft,
                            padding: const EdgeInsets.all(12),
                            child: Text(
                              d.name,
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                shadows: [
                                  Shadow(
                                    blurRadius: 10,
                                    color: Colors.black,
                                    offset: Offset(1, 1),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                ),
              ),

              const SizedBox(height: 35),

              Text(
                "Minuman Baru",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: color.primary,
                ),
              ),

              const SizedBox(height: 15),

              // LIST MINUMAN BARU (Filtered + reversed)
              SizedBox(
                height: size.height * 0.28,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children:
                      filteredDrinks.reversed.take(5).map((d) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => DetailPage(drink: d),
                              ),
                            );
                          },
                          child: Container(
                            width: 180,
                            margin: const EdgeInsets.only(right: 15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.blue.shade100,
                                  blurRadius: 6,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                              image: DecorationImage(
                                image: AssetImage(d.image),
                                fit: BoxFit.cover,
                              ),
                            ),
                            alignment: Alignment.bottomLeft,
                            padding: const EdgeInsets.all(12),
                            child: Text(
                              d.name,
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                shadows: [
                                  Shadow(
                                    blurRadius: 10,
                                    color: Colors.black,
                                    offset: Offset(1, 1),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
