import 'package:flutter/material.dart';
import 'task3.dart';

class Task2 extends StatelessWidget {
  const Task2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
            height: 200,
            width: 200,
            alignment: Alignment.center,
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/image.png",),fit: BoxFit.fill)),
        child: const Text("Ankita"),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => const Task3()));
        },
        child: const Icon(Icons.forward),
      ),
    );
  }
}
