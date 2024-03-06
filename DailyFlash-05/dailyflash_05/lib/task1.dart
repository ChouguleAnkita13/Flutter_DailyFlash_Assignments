import 'package:flutter/material.dart';
import 'task2.dart';

class Task1 extends StatelessWidget {
  const Task1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile Information"),
        backgroundColor: const Color.fromARGB(255, 75, 3, 88),
        foregroundColor: Colors.white,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset("assets/images/image.png", height: 250, width: 250),
          const SizedBox(height: 20),
          const Text(
            "Username:Ankita Chougule",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 10),
          const Text(
            "Phone number :9423843433",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: ((context) => const Task2())));
        },
        child: const Icon(Icons.forward),
      ),
    );
  }
}
