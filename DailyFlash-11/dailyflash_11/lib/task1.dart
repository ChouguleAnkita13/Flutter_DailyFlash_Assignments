import 'package:flutter/material.dart';
import 'task2.dart';

class Task1 extends StatelessWidget {
  const Task1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task1"),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: SizedBox(
          width: 200,
          child: TextField(
            decoration: InputDecoration(   
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(color: Colors.red),
              ),
              focusedBorder: OutlineInputBorder(              
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(color: Colors.green)),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: ((context) => const Task2())));
        },
        backgroundColor: Colors.purple,
        child: const Icon(Icons.forward),
      ),
    );
  }
}
