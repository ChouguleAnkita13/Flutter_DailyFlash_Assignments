import "package:flutter/material.dart";
import 'task1.dart';

class Task5 extends StatefulWidget {
  const Task5({super.key});
  @override
  State<Task5> createState() => _Task5();
}

class _Task5 extends State<Task5> {
  TextEditingController nameContoller = TextEditingController();
  TextEditingController phoneContoller = TextEditingController();
  bool isSubmit = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task5"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: nameContoller,
            decoration: InputDecoration(
                hintText: "Enter Name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                )),
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            controller: phoneContoller,
            decoration: InputDecoration(
                hintText: "Enter Phone Number",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                )),
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  isSubmit = true;
                });
              },
              child: const Text("Submit")),
          const SizedBox(
            height: 20,
          ),
          if (isSubmit == true)
            Container(
              color: Colors.grey.shade200,
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Name:${nameContoller.text}"),
                  const SizedBox(
                    height: 10,
                  ),
                  Text("Phone:${phoneContoller.text}"),
                ],
              ),
            )
        ],
      )),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => const Task1()));
          },
          child: const Icon(Icons.forward)),
    );
  }
}
