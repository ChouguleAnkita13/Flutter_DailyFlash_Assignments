import "package:flutter/material.dart";
import 'task2.dart';

class Task1 extends StatelessWidget{
  const Task1({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task1"),
        backgroundColor: Colors.blue,
      ),
      body:Row(
          children: [
            Container(
                width: 100,
                height: 100,
                color: Colors.orange,
                ),
            Container(
                width: 80,
                height: 80,
                color: Colors.green,
                ),
            Container(
                width: 70,
                height: 80,
                color: Colors.purple,
                ),
          ],
        ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Task2()));

      },
      child:const Icon(Icons.forward)
      ),
    );

  }

}