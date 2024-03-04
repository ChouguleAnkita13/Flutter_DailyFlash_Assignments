import 'package:flutter/material.dart';
import 'task1.dart';

class Task5 extends StatefulWidget {
  const Task5({super.key});
  @override
  State<Task5> createState() => _Task5();
}

class _Task5 extends State<Task5> {
  bool isTapped = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task5"),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              isTapped = true;
            });
          },
          child: Container(
            width: 300,
            height: 300,
            alignment: Alignment.center,
            color: isTapped
                ? const Color.fromARGB(255, 143, 197, 242)
                : const Color.fromARGB(255, 232, 146, 139),
            child: Text(isTapped ? "Container Tapped" : "Click Me"),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: ((context) => const Task1())));
        },
        backgroundColor: Colors.purple,
        child: const Icon(Icons.forward),
      ),
    );
  }
}
