import "package:flutter/material.dart";
import 'task1.dart';

class Task5 extends StatelessWidget {
  const Task5({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task5"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
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
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  flex: 5,
                  child: Container(
                    height: 100,
                    color: Colors.red,
                  ),
                ),
                Expanded(
                  flex: 4,
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
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  flex: 7,
                  child: Container(
                    height: 100,
                    color: Colors.red,
                  ),
                ),
                Expanded(
                  flex: 2,
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
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => const Task1()));
          },
          child: const Icon(Icons.forward)),
    );
  }
}
