import 'package:flutter/material.dart';
import '../models/drink_model.dart';

class DrinkCard extends StatelessWidget {
  final DrinkModel drink;

  const DrinkCard({super.key, required this.drink});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          Expanded(
            child: Image.asset(
              drink.image,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              drink.name,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
