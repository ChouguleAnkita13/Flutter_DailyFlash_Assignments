import 'package:flutter/material.dart';
import 'task4.dart';

class Task3 extends StatelessWidget {
  const Task3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task 3"),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 222, 152, 235),
              border: Border.all(color: Colors.purple),
              borderRadius:
                  const BorderRadius.only(topRight: Radius.circular(30))),
         
        ),
      ),
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
