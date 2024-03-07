import "package:flutter/material.dart";
import 'task1.dart';

class Task5 extends StatefulWidget {
  const Task5({super.key});

  @override
  State<Task5> createState() => _Task5();
}

class _Task5 extends State<Task5> {
  int selectedContainer = 0;

  Color? changeColor(int index) {
    if (selectedContainer == index) {
      return Colors.red;
    }
    return Colors.white;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task5"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
              onTap: () {
                setState(() {
                  selectedContainer = 1;
                });
              },
              child: Container(
                height: 100,
                width: 200,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: changeColor(1),
                ),
              )),
          GestureDetector(
              onTap: () {
                setState(() {
                  selectedContainer = 2;
                });
              },
              child: Container(
                height: 100,
                width: 200,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: changeColor(2),
                ),
              )),
          GestureDetector(
              onTap: () {
                setState(() {
                  selectedContainer = 3;
                });
              },
              child: Container(
                height: 100,
                width: 200,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: changeColor(3),
                ),
              )),
        ],
      )),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => const Task1()));
          },
          child: const Icon(Icons.forward)),
    );
  }
}
