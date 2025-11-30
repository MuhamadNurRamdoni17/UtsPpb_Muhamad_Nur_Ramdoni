import 'package:flutter/material.dart';
import '../models/drink_model.dart';
import '../widgets/drink_card.dart';
import 'detail_page.dart';

class GridPage extends StatefulWidget {
  const GridPage({super.key});

  @override
  State<GridPage> createState() => _GridPageState();
}

class _GridPageState extends State<GridPage> {
  String searchQuery = "";

  @override
  Widget build(BuildContext context) {
    // Filter minuman berdasarkan teks pencarian
    final filteredDrinks =
        drinkList
            .where(
              (d) => d.name.toLowerCase().contains(searchQuery.toLowerCase()),
            )
            .toList();

    return Scaffold(
      backgroundColor: Colors.grey.shade100,

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black87,
        centerTitle: true,
        title: const Text(
          "Semua Minuman",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),

      body: Column(
        children: [
          // 🔍 SEARCH BAR
          Container(
            margin: const EdgeInsets.fromLTRB(16, 10, 16, 10),
            padding: const EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(12),
            ),
            child: TextField(
              onChanged: (val) => setState(() => searchQuery = val),
              decoration: const InputDecoration(
                icon: Icon(Icons.search),
                hintText: "Cari minuman...",
                border: InputBorder.none,
              ),
            ),
          ),

          // GridView wajib dibungkus Expanded
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(16),
              physics: const BouncingScrollPhysics(),
              itemCount: filteredDrinks.length,

              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // 2 kolom
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 0.73,
              ),

              itemBuilder: (context, i) {
                return TweenAnimationBuilder(
                  tween: Tween<double>(begin: 0, end: 1),
                  duration: Duration(milliseconds: 400 + (i * 80)),
                  curve: Curves.easeOutBack,

                  builder: (context, value, child) {
                    return Transform.scale(scale: value, child: child);
                  },

                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => DetailPage(drink: filteredDrinks[i]),
                        ),
                      );
                    },

                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        gradient: LinearGradient(
                          colors: [Colors.white, Colors.brown.shade50],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.08),
                            blurRadius: 10,
                            offset: const Offset(3, 3),
                          ),
                        ],
                      ),
                      child: DrinkCard(drink: filteredDrinks[i]),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
