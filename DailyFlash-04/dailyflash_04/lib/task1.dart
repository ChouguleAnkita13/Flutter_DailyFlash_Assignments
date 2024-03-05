import 'package:flutter/material.dart';
import 'task2.dart';

class Task1 extends StatelessWidget{
  const Task1({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(child: 
      ElevatedButton(onPressed: (){},
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        shadowColor: Colors.red,
        fixedSize: const Size(300,50)
      ),
      child: const Text("Button"),),),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.of(context).push(MaterialPageRoute(builder: ((context) => const Task2())));
      },
      child: const Icon(Icons.forward),),
    );
  }
}