import 'package:flutter/material.dart';
import 'task4.dart';

class Task3 extends StatelessWidget {
  const Task3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task3"),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Center(
          child: Container(
        width: 400,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.amber,
        ),
        child: TextField(
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            hintText: "Enter your name",
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          ),
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: ((context) => const Task4())));
        },
        backgroundColor: Colors.purple,
        child: const Icon(Icons.forward),
      ),
    );
  }
}
