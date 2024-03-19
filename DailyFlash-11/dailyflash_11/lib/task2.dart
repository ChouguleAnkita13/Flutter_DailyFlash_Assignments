import 'package:flutter/material.dart';
import 'task3.dart';

class Task2 extends StatefulWidget {
  const Task2({super.key});
  @override
  State<Task2> createState() => _Task2();
}

class _Task2 extends State<Task2> {
  bool isTap = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task2"),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: SizedBox(
            width: 200,
            child: !isTap
                ? TextField(
                    onTap: () {
                      setState(() {
                        isTap =true;
                      });
                    },
                    decoration: InputDecoration(
                        suffixIcon: const Icon(Icons.lock),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  )
                : TextField(
                    decoration: InputDecoration(
                        suffix: const Row(
                          children: [
                            Spacer(),
                            Icon(Icons.search),
                            Icon(Icons.lock),
                          ],
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  )),
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
