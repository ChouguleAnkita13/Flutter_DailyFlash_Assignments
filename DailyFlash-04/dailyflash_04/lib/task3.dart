import 'package:flutter/material.dart';
import 'task4.dart';

class Task3 extends StatelessWidget {
  const Task3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     floatingActionButton: SizedBox(
      width: 300,
      height: 100,
      child: FloatingActionButton(onPressed: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Task4()));
      },
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text("Ankita"),SizedBox(width: 10,), Icon(Icons.forward)],
      )
      ),
     ),
    );
  }
}



