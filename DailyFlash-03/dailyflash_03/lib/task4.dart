import 'package:flutter/material.dart';
import 'task5.dart';

class Task4 extends StatelessWidget {
  const Task4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        height: 200,
        width: 200,
        decoration: const BoxDecoration(
          color: Colors.teal,
          boxShadow: [   
          BoxShadow(
              color: Color.fromARGB(255, 120, 223, 212),
              offset: Offset(0, -50),
              blurRadius: 8)
        ]),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => const Task5()));
        },
        child: const Icon(Icons.forward),
      ),
    );
  }
}
