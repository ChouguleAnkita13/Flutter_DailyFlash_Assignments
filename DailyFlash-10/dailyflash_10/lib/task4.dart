import 'package:flutter/material.dart';
import 'task5.dart';

class Task4 extends StatelessWidget {
  const Task4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task4"),
          centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow:const [BoxShadow(color: Colors.red,offset: Offset(5, 5))],
              gradient: const LinearGradient(
                  colors: [Color.fromARGB(255, 64, 91, 246), Color.fromARGB(255, 150, 26, 123)],
            
                   stops: [0.1, 0.4],),),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: ((context) => const Task5())));
        },
        backgroundColor: Colors.purple,
        child: const Icon(Icons.forward),
      ),
    );
  }
}
