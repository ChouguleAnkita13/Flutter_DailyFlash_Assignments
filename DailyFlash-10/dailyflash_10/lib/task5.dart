import 'package:flutter/material.dart';
import 'task1.dart';

class Task5 extends StatelessWidget {
  const Task5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: const Text("Task5"),
          centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body:  Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              boxShadow:const [BoxShadow(color: Colors.red,offset: Offset(5, 5))],
              gradient: const LinearGradient(
                  colors: [Color.fromARGB(255, 64, 91, 246), Color.fromARGB(255, 150, 26, 123),Colors.green],      
                   stops: [0.2,0.5, 0.9],),),
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
