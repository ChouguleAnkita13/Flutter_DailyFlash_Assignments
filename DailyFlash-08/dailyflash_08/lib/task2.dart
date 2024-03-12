import "package:flutter/material.dart";
import 'task3.dart';

class Task2 extends StatelessWidget {
  Task2({super.key});
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
        title: const Text("Task2"),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: foodList.length,
        itemBuilder: (context, index) {
        return Column(
          children: [
            Container(
              height: 200,
              width: 200,
              margin:const EdgeInsets.only(top: 30,bottom: 5,right: 5,left: 5) ,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black)
              ),
              child: Image.asset(foodList[index]["img"],fit: BoxFit.cover,),
            ),
             Container(
              height: 50,
              width: 200,
              margin:const EdgeInsets.only(bottom: 5,right: 5,left: 5) ,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black)
              ),
              child: Text(foodList[index]["name"]),
            ),

          ],
        );
      }),
      
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => const Task3()));
          },
          child: const Icon(Icons.forward)),
    );
  }
}
