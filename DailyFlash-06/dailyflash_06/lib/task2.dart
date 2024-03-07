import "package:flutter/material.dart";
import 'task3.dart';

class Task2 extends StatelessWidget {
  const Task2({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task2"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: Colors.black,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40))),
              child: Image.asset(
                "assets/image.png",
              )),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple, fixedSize: const Size(250, 70)),
              child: const Text(
                "Add to Card",
                style: TextStyle(color: Colors.white,fontSize: 20),
              ))
        ]),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const Task3()));
      },
      child:const Icon(Icons.forward)

      ),
    );
  }
}
