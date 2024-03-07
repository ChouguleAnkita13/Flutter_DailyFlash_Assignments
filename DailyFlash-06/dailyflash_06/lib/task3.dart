import "package:flutter/material.dart";
import 'task4.dart';
class Task3 extends StatelessWidget {
  const Task3({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task3"),
        backgroundColor: Colors.blue,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,

          children: [
            Container(
                width: 100,
                height: 100,
                color: Colors.red,
                ),
            Container(
                width: 100,
                height: 100,
                color: Colors.purple,
                ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,

          children: [
            Container(
                width: 100,
                height: 100,
                color: Colors.orange,
                ),
            Container(
                width: 100,
                height: 100,
                color: Colors.green,
                ),
          ],
        ),
        ]
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const Task4()));
      },
      child:const Icon(Icons.forward)

      ),
    );
  }
}
