import "package:flutter/material.dart";
import 'task2.dart';

class Task1 extends StatelessWidget {
  const Task1({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: const Text("Task1"),
        backgroundColor: Colors.blue,
      ),
      body: SizedBox(
        height: 60,
        child: ListView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.all(10),
          children: [
            Container(
              height: 60,width: 60,color: Colors.amber,
            ),
            const SizedBox(width: 30,),
              Container(
              height: 60,width: 60,color: Colors.red,
            ),
            const SizedBox(width: 30,),
        
              Container(
              height: 60,width: 60,color: Colors.green,
            ),
            const SizedBox(width: 30,),
        
              Container(
              height: 60,width: 60,color: Colors.blue,
        
            ),
            const SizedBox(width: 10,),
        
              Container(
              height: 60,width: 60,color: Colors.pink,
            ),
          ],
        ),
      ),
     
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Task2()));

      },
      child:const Icon(Icons.forward)
      ),
    );
  }
}
