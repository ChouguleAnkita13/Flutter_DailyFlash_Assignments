import 'package:flutter/material.dart';
import 'task2.dart';


class Task1 extends StatelessWidget {
  const Task1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
          leading: const Icon(Icons.menu),
          title: const Text("AppBar"),
          centerTitle: true,
          actions: const [
            Icon(Icons.add),
            SizedBox(width: 10,)
          ],
          backgroundColor: Colors.purple,
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: ((context) => const Task2())));
        },
        backgroundColor: Colors.purple,
        child: const Icon(Icons.forward),),
    );

  }
}
