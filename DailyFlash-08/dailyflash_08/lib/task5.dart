import "package:flutter/material.dart";
import 'task1.dart';

class Task5 extends StatelessWidget {
  Task5({super.key});

  final List cardList = [
    {'title': 'Title 1', 'description': "Give Some Description Here"},
    {'title': 'Title 1', 'description': "Give Some Description Here"},
    {'title': 'Title 1', 'description': "Give Some Description Here"},
    {'title': 'Title 1', 'description': "Give Some Description Here"},
    {'title': 'Title 1', 'description': "Give Some Description Here"},
    {'title': 'Title 1', 'description': "Give Some Description Here"},
     {'title': 'Title 1', 'description': "Give Some Description Here"},
    {'title': 'Title 1', 'description': "Give Some Description Here"},
    {'title': 'Title 1', 'description': "Give Some Description Here"},
    {'title': 'Title 1', 'description': "Give Some Description Here"}
  ];
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task5"),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: cardList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              width: 300,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(cardList[index]['title']),
                      Text(cardList[index]['description'])
                    ],
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    margin: const EdgeInsets.only(top: 10, bottom: 10),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 176, 39, 162),
                        borderRadius: BorderRadius.circular(100)),
                    child: const Icon(Icons.add),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => const Task1()));
          },
          child: const Icon(Icons.forward)),
    );
  }
}
