import 'package:flutter/material.dart';
import 'task3.dart';

class Task2 extends StatelessWidget {
  const Task2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        actions: const [
          Icon(Icons.add),
          Icon(Icons.person),
          Icon(Icons.calendar_month_sharp)
        ],
        backgroundColor: Colors.purple,
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
