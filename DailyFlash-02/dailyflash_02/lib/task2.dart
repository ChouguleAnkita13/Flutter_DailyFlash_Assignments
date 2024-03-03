import 'package:flutter/material.dart';
import 'task3.dart';

class Task2 extends StatelessWidget {
  const Task2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task 2"),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          padding: const EdgeInsets.all(30),
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 222, 152, 235),
            border: Border(
              left: BorderSide(color: Colors.black, width: 5),
            ),
          ),
          child: const Text(
            "Hello",
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: ((context) => const Task3())));
        },
        backgroundColor: Colors.purple,
        child: const Icon(Icons.forward),
      ),
    );
  }
}
