import "package:flutter/material.dart";
import 'task2.dart';

class Task1 extends StatelessWidget {
  const Task1({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.blue.shade100),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 100,
                height: 150,
                color: const Color.fromARGB(255, 234, 212, 88),
              ),
              Container(
                width: 100,
                height: 150,
                color: const Color.fromARGB(255, 245, 126, 75),
              )
            ],
          ),
          Container(
            width: 300,
            height: 100,
            color: const Color.fromARGB(255, 70, 242, 156),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 100,
                height: 150,
                color: const Color.fromARGB(88, 202, 78, 243),
              ),
              Container(
                width: 100,
                height: 150,
                color: const Color.fromARGB(179, 124, 208, 247),
              )
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Task2()));

      },
      child:const Icon(Icons.forward)
      ),
    );
  }
}
