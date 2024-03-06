import 'package:flutter/material.dart';
import 'task5.dart';

class Task4 extends StatelessWidget {
  const Task4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body:  SizedBox(
        height: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
            ),
             Container(
              height: 100,
              width: 100,
              color: Colors.yellow,

            ),
             Container(
              height: 100,
              width: 100,
              color: Colors.green,

            ),
        
          ]),
      ),
     
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => const Task5()));
        },
        child: const Icon(Icons.forward),
      ),
    );
  }
}
