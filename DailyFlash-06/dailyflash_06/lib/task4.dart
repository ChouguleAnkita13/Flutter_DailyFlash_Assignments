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
        child: Container(
          height: 150,
          width: 320,
          decoration: BoxDecoration(border: Border.all(color: Colors.black)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 120,
                width: 120,
                alignment: Alignment.center,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
              ),
                Container(
                height: 120,
                width: 120,
                alignment: Alignment.center,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.purple,
                ),
              )
            ],
          ),
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
