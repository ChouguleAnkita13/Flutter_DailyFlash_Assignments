import 'package:flutter/material.dart';
import 'task4.dart';

class Task3 extends StatefulWidget {
  const Task3({super.key});
  @override
  State<Task3> createState() {
    return _Task3State();
  }
}

class _Task3State extends State<Task3> {
  TextEditingController nameController = TextEditingController();
  TextEditingController clgController = TextEditingController();

  bool isNameEmpty = false;
  bool isClgEmpty = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task3"),
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
      ),
      body: Center(
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
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
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
                },
                child: const Text("submit"))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: ((context) => const Task4())));
        },
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        child: const Icon(Icons.forward),
      ),
    );
  }
}
