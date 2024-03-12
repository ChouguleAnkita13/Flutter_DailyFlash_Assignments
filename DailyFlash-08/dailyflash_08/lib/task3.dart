import "package:flutter/material.dart";
import 'task4.dart';
class Task3 extends StatelessWidget {
  const Task3({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task3"),
        backgroundColor: Colors.blue,
      ),
      body: 
        Center(
         child:Container(
                  width: 200,
                  height: 70,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 70,
                        width: 2,
                       color: Colors.black,
                      ),Container(
                        height: 70,
                        width: 2,
                       color: Colors.black,
                      )
                    ],
                  ),
                  ),
        
        ),
        
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Task4()));
      },
      child:const Icon(Icons.forward)

      ),
    );
  }
}
