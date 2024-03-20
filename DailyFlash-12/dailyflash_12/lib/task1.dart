import 'package:flutter/material.dart';
import 'task2.dart';

class Task1 extends StatefulWidget {
  const Task1({super.key});
  @override
  State<Task1> createState() {
    return _Task1State();
  }
}

class _Task1State extends State<Task1> {
  bool passwordVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task1"),
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: SizedBox(
          width: 300,
          child: TextField(
            obscureText: passwordVisible,
            decoration: InputDecoration(
                hintText: "password",
                suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        passwordVisible=!passwordVisible;
                      });
                    },
                    icon: Icon(passwordVisible
                        ? Icons.visibility_off
                        : Icons.visibility)),
                border:  OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                )),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: ((context) => const Task2())));
        },
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        child: const Icon(Icons.forward),
      ),
    );
  }
}
