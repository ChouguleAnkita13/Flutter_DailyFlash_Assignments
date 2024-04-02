import 'package:flutter/material.dart';
import 'task4.dart';

class Task3 extends StatefulWidget {
  const Task3({super.key});
  @override
  State<Task3> createState() => _Task2State();
}

class _Task2State extends State<Task3> {
  TextEditingController emailController = TextEditingController();

  GlobalKey<FormFieldState> emailKey = GlobalKey<FormFieldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task3"),
      ),
      body: Center(
        child: SizedBox(
          width: 300,
          child: Column(
            children: [
              TextFormField(
                key: emailKey,
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                    label: Text("Email"), border: OutlineInputBorder()),
                validator: (val) {
                  if (val == null || val.isEmpty) {
                    return "Please Enter email";
                  }
                  if (!RegExp(
                          r'\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b')
                      .hasMatch(val)) {
                    return 'Please enter a valid email';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () {
                    emailKey.currentState!.validate();
                  },
                  child: const Text("Submit"))
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const Task4()));
      }),
    );
  }
}
