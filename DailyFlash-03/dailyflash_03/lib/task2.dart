import 'package:flutter/material.dart';
import 'task3.dart';
class Task2 extends StatelessWidget{
  const Task2({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      // body: Center(child: 
      // Container(
      //   height: 300,
      //   width: 300,
      //   color: Colors.blueGrey,
      //   child: Image.asset(""),
      // )),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Task3()));
      },
      child: const Icon(Icons.forward),),
    );
  }
}