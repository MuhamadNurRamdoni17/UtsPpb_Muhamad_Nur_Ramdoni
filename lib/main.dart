import 'package:flutter/material.dart';
import 'theme/app_theme.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const MinumanApp());
}

class MinumanApp extends StatelessWidget {
  const MinumanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Katalog Minuman',
      theme: AppTheme.lightTheme,
      home: const HomePage(),
    );
  }
}
