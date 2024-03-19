import 'package:dailyflash_11/task1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:Task1(),
      debugShowCheckedModeBanner: false,
    );
  }
}
