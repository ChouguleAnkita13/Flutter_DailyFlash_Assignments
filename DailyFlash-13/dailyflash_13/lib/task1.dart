import 'package:dailyflash_13/task2.dart';
import 'package:flutter/material.dart';

class Task1 extends StatefulWidget {
  const Task1({super.key});
  @override
  State<Task1> createState() => _Task1State();
}

class _Task1State extends State<Task1> {
  TextEditingController uname = TextEditingController();
  TextEditingController password = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task1"),
      ),
      body: Center(
        child: Form(
          key: formKey,
          child: SizedBox(
            width: 300,
            child: Column(
              children: [
                TextFormField(
                  controller: uname,
                  decoration: const InputDecoration(
                      label: Text("Username"), border: OutlineInputBorder()),
                  validator: (val) {
                    if (val == null || val.isEmpty) {
                      return "Please Enter username";
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  controller: password,
                  decoration: const InputDecoration(
                      label: Text("Password"), border: OutlineInputBorder()),
                  validator: (val) {
                    if (val == null || val.isEmpty) {
                      return "Please Enter password";
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    onPressed: () {
                      formKey.currentState!.validate();
                    },
                    child: const Text("Submit"))
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Task2()));
      }),
    );
  }
}
