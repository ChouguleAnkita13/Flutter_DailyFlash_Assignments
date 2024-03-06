import 'package:flutter/material.dart';
import 'task1.dart';

class Task5 extends StatelessWidget {
  const Task5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(children: [
          Image.asset(
            "assets/images/img1.jpg",
            height: 200,
            width: 200,
          ),
          const Spacer(),
          Container(
            height: 100,
            width: 200,
            color: Colors.red,
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 100,
            width: 200,
            color: Colors.blue,
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => const Task1()));
        },
        child: const Icon(Icons.forward),
      ),
    );
  }
}
