import 'package:flutter/material.dart';
import 'task3.dart';

class Task2 extends StatefulWidget {
  const Task2({super.key});
  @override
  State<Task2> createState() => _Task2State();
}

class _Task2State extends State<Task2> {
  TextEditingController phoneController = TextEditingController();

  GlobalKey<FormFieldState> phoneKey = GlobalKey<FormFieldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task2"),
      ),
      body: Center(
        child: SizedBox(
          width: 300,
          child: Column(
            children: [
                const SizedBox(
                height: 20,
              ),
              TextFormField(
                key: phoneKey,
                controller: phoneController,
                
                decoration: const InputDecoration(
                    label: Text("Phone Number"), border: OutlineInputBorder()),
                validator: (val) {
                  if (val == null || val.isEmpty) {
                    return "Please Enter phone number";
                  }
                  else if (!RegExp(r'^[0-9]{10}$').hasMatch(val)) {
                    return 'Please enter a valid 10-digit mobile number';
                  }
                  return null;
                },
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () {
                    phoneKey.currentState!.validate();
                  },
                  child: const Text("Submit"))
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Task3()));
      }),
    );
  }
}
