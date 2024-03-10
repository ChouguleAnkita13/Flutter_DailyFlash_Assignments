import "package:flutter/material.dart";
import 'task3.dart';

class Task2 extends StatelessWidget {
  const Task2({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task2"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: 
          Container(
              width: 150,
              height: 50,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(20)),
              child:const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star_rounded,color: Colors.orange,),
                  SizedBox(width: 10,),
                  Text("Rating : 4.5")
                ],
              )),
          
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const Task3()));
      },
      child:const Icon(Icons.forward)

      ),
    );
  }
}
