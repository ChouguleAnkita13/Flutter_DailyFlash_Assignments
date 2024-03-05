import 'package:flutter/material.dart';
import 'task2.dart';

class Task1 extends StatelessWidget{
  const Task1({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(child: 
      Container(
        height: 300,
        width: 300,
        color: Colors.blueGrey,
        padding: const EdgeInsets.all(10),
        child: Image.asset("assets/image.png"),
      )),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.of(context).push(MaterialPageRoute(builder: ((context) => Task2())));
      },
      child: const Icon(Icons.forward),),
    );
  }
}