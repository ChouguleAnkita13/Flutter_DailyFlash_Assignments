import "package:flutter/material.dart";
import 'task5.dart';

class Task4 extends StatelessWidget {
   Task4({super.key});
   final List foodList = [
    {
      'name': "Pizza",
      'img': "assets/images/pizza.png",
    },
    {
      'name': "Samosa",
      'img': "assets/images/samosa.png",
    },
    {
      'name': "Burger",
      'img': "assets/images/burger.png",
    },
    {
      'name': "Rice",
      'img': "assets/images/rice.png",
    },
    {
      'name': "Noodles",
      'img': "assets/images/noodles.png",
    }
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task4"),
        backgroundColor: Colors.blue,
      ),
       body: ListView.builder(
        itemCount: foodList.length,
        itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            width: 300,
            height: 120,
          
            decoration: BoxDecoration(
                    border: Border.all(color: Colors.black)
                  ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
               
                
                 Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(100)
                  ),
                  child: Image.asset(foodList[index]["img"],fit: BoxFit.fitHeight,),
                ),
                Text(foodList[index]["name"]),

            
              ],
            ),
          ),
        );
      }),
      
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Task5()));
          },
          child: const Icon(Icons.forward)),
    );
  }
}
