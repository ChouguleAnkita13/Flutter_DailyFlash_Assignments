import 'package:flutter/material.dart';
import 'task5.dart';

class Task4 extends StatefulWidget {
  const Task4({super.key});
  @override
  State<Task4> createState() {
    return _Task4State();
  }
}

class _Task4State extends State<Task4> {
  TextEditingController nameController = TextEditingController();
  TextEditingController clgController = TextEditingController();
  List cardList = [];

  bool isNameEmpty = false;
  bool isClgEmpty = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task4"),
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 300,
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                    hintText: "Enter Your Name",
                    errorText: isNameEmpty ? "Enter Your Name" : "",
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    errorBorder: isNameEmpty
                        ? OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(20),
                          )
                        : OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          )),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 300,
              child: TextField(
                controller: clgController,
                decoration: InputDecoration(
                    hintText: "Enter Your college",
                    errorText: isClgEmpty ? "Enter Your college" : "",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    errorBorder: isClgEmpty
                        ? OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(20),
                          )
                        : OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          )),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (nameController.text.trim().isNotEmpty &&
                      clgController.text.trim().isNotEmpty) {
                    cardList.add({
                      'name': nameController.text,
                      'clg': clgController.text
                    });
                  }
                  if (nameController.text.isEmpty) {
                    isNameEmpty = true;
                  } else {
                    isNameEmpty = false;
                  }
                  if (clgController.text.isEmpty) {
                    isClgEmpty = true;
                  } else {
                    isClgEmpty = false;
                  }
                });
                nameController.clear();
                clgController.clear();
              },
              child: const Text("submit"),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 200,
              width: 300,
              child: ListView.builder(
                  itemCount: cardList.length,
                  itemBuilder: ((context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                      ),
                      margin: const EdgeInsets.only(bottom: 10),
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Text("Name:${cardList[index]['name']}"),
                          const SizedBox(
                            height: 5,
                          ),
                          Text("CollegeName:${cardList[index]['clg']}"),
                        ],
                      ),
                    );
                  })),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: ((context) => const Task5())));
        },
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        child: const Icon(Icons.forward),
      ),
    );
  }
}
