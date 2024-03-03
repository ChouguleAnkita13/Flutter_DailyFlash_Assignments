import 'package:flutter/material.dart';
import 'task1.dart';

class Task5 extends StatelessWidget {
  const Task5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: const Text("AppBar"),
          centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          decoration: const BoxDecoration(
            color: Colors.purple,
            boxShadow: [
              BoxShadow(color: Colors.red,offset: Offset(10, 10),blurRadius: 8)
            ]
          ),
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
