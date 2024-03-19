import 'package:flutter/material.dart';
import 'task5.dart';

class Task4 extends StatelessWidget {
  const Task4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task4"),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: SizedBox(
          width: 400,
          child: TextField(
              maxLength: 20,
              decoration: InputDecoration(
                labelText: "Enter your name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              )),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: ((context) => const Task5())));
        },
        backgroundColor: Colors.purple,
        child: const Icon(Icons.forward),
      ),
    );
  }
}
