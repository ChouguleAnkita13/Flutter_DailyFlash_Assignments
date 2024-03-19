import 'package:flutter/material.dart';
import 'task1.dart';

class Task5 extends StatelessWidget {
  const Task5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: const Text("Task5"),
          centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body:  Center(
        child: SizedBox(
          width: 300,
          child: TextField(
              maxLines: 5,
              cursorColor: Colors.red,
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
              .push(MaterialPageRoute(builder: ((context) => const Task1())));
        },
        backgroundColor: Colors.purple,
        child: const Icon(Icons.forward),
      ),
    );
  }
}
