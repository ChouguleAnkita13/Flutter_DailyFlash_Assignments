import 'package:flutter/material.dart';
import 'task1.dart';
import 'package:intl/intl.dart';

class Task5 extends StatefulWidget {
  const Task5({super.key});
  @override
  State<Task5> createState() {
    return _Task5State();
  }
}

class _Task5State extends State<Task5> {
  TextEditingController dateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task5"),
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: SizedBox(
          width: 300,
          child: TextField(
            controller: dateController,
            decoration: InputDecoration(
                suffixIcon: const Icon(Icons.date_range_outlined),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                )),
            onTap: () async {
              DateTime? pickedDate = await showDatePicker(
                  context: context,
                  firstDate: DateTime(2024),
                  lastDate: DateTime(2025));
              String formatDate = DateFormat('E, MMM d').format(pickedDate!);
              dateController.text = formatDate;
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: ((context) => const Task1())));
        },
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        child: const Icon(Icons.forward),
      ),
    );
  }
}
