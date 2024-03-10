import "package:flutter/material.dart";
import 'task5.dart';

class Task4 extends StatelessWidget {
  const Task4({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task4"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              flex: 6,
              child: Container(
                height: 100,
                color: Colors.red,
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                
                height: 100,
                color: Colors.purple,
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                height: 100,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => const Task5()));
          },
          child: const Icon(Icons.forward)),
    );
  }
}
