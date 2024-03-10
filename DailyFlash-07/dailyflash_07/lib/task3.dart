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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                  width: 100,
                  height: 100,
                  decoration:const  BoxDecoration(
                    color: Colors.red,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.purple,
                        offset: Offset(10, 10),
                        blurRadius: 10
                      )
                    ],
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))
                  ),
                  ),
              Container(
                  width: 100,
                  height: 100,
                  decoration:const  BoxDecoration(
                    color: Colors.purple,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.red,
                        offset: Offset(10, 10),
                        blurRadius: 10
                      )
                    ],
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))
                  ),
                  
                  ),
            ],
          ),
        ),
        
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const Task4()));
      },
      child:const Icon(Icons.forward)

      ),
    );
  }
}
