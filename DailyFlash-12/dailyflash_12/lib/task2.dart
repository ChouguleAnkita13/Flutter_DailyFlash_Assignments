import 'package:flutter/material.dart';
import 'task3.dart';

class Task2 extends StatefulWidget {
  const Task2({super.key});
  @override
  State<Task2> createState() {
    return _Task2State();
  }
}

class _Task2State extends State<Task2> {
  TextEditingController dayController=TextEditingController();
  List daysList=[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task2"),
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 30,),
            SizedBox(
              width: 300,
              child: TextField(
                controller: dayController,
                decoration: InputDecoration(
                  labelText: "Enter Weekdays",         
                    border:  OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
                onSubmitted: (value){
                  setState(() {
                  daysList.add(value);                 
                  });
                  dayController.clear();
                },
              ),
            ),
            const SizedBox(height: 20,),
            Text("$daysList")
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: ((context) => const Task3())));
        },
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        child: const Icon(Icons.forward),
      ),
    );
  }
}
