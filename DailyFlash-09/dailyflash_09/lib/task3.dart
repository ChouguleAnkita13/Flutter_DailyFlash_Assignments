import "package:flutter/material.dart";
import 'task4.dart';
class Task3 extends StatelessWidget {
   Task3({super.key});
   final cardList=[1,2,3,4,5,6,7,8,9,10];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task3"),
        backgroundColor: Colors.blue,
      ),
        body: ListView.builder(
          itemCount: cardList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                width: 300,
                padding: const EdgeInsets.all(8),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                       height: 55,
                      width: 60,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(10)),

                      child: Image.asset(
                        "assets/images/c2wLogo.png",
                        height: 50,
                        width: 50,
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                      height: 40,
                      width: 100,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Text("Core2web"),
                    ),
                    const SizedBox(height: 3,),
                     Container(
                      height: 40,
                      width: 100,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Text("Biencaps"),
                    ),
                    const SizedBox(height: 3,),

                     Container(
                      height: 40,
                      width: 100,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Text("Encubators"),
                    ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 55,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(100)),
                      child: Icon(Icons.check,size: 30,),
                    ),
                  ],
                ),
              ),
            );
          }),
      
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) =>const Task4()));
      },
      child:const Icon(Icons.forward)

      ),
    );
  }
}
