import "package:flutter/material.dart";
import 'task3.dart';

class Task2 extends StatelessWidget {
  Task2({super.key});

  final cardList = [1, 2, 3, 4, 5, 6, 7, 8];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task2"),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
          itemCount: cardList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                width: 300,
                padding: const EdgeInsets.all(8),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      "assets/images/c2wLogo.png",
                      height: 60,
                      width: 60,
                    ),
                    Container(
                      height: 40,
                      width: 100,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Text("Core2web"),
                    ),
                  ],
                ),
              ),
            );
          }),
      
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) =>Task3()));
          },
          child: const Icon(Icons.forward)),
    );
  }
}
