import 'package:dailyflash_12/task5.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:Task5(),
      debugShowCheckedModeBanner: false,
    );
  }
}
