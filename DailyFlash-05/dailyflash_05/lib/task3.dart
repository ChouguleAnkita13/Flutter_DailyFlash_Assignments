import 'package:flutter/material.dart';
import 'task4.dart';

class Task3 extends StatelessWidget {
  const Task3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, 
          children: [
          Image.asset("assets/images/image.png", height: 250, width: 250),
          const SizedBox(height: 20),
          Container(
            padding:const EdgeInsets.all(30),
            decoration:  BoxDecoration(
                color: const Color.fromARGB(255, 227, 129, 245),
                boxShadow:const [
                   BoxShadow(color: Color.fromARGB(255, 58, 3, 67),offset: Offset(0,8),blurRadius: 20),
                  
                ],
                border: Border.all(color: const Color.fromARGB(255, 58, 3, 67)),
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
            ),
            child: const Text(
              "Ankita Chougule",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(height: 10),
         
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: ((context) => const Task4())));
        },
        child: const Icon(Icons.forward),
      ),
    );
  }
}
