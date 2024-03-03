import 'package:flutter/material.dart';
import 'task5.dart';

class Task4 extends StatelessWidget {
  const Task4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task 4"),
          centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 150,
          padding: const EdgeInsets.all(30),
          decoration: BoxDecoration(
              color:  const Color.fromARGB(255, 239, 172, 167),
              border: Border.all(color: Colors.red),
              borderRadius:
                  const BorderRadius.only(topLeft: Radius.circular(30),bottomRight: Radius.circular(30))),
         child: const Text("Ankita Chougule"),
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
