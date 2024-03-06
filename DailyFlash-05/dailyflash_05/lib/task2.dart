import 'package:flutter/material.dart';
import 'task3.dart';

class Task2 extends StatelessWidget {
  const Task2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Container(
              height: 100,
              width: 100,
              child:Image.asset("assets/images/img1.jpg") ,
            ),
             Container(
              height: 100,
              width: 100,
              child:Image.asset("assets/images/img2.jpg") ,
            ),
             Container(
              height: 100,
              width: 100,
              child:Image.asset("assets/images/img3.jpg") ,
            ),
        
          ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => const Task3()));
        },
        child: const Icon(Icons.forward),
      ),
    );
  }
}
