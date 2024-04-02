import 'package:dailyflash_13/task5.dart';
import 'package:flutter/material.dart';

class Task4 extends StatefulWidget {
  const Task4({super.key});
  @override
  State<Task4> createState() => _Task4State();
}

class _Task4State extends State<Task4> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task4"),
      ),
      body: Form(
        key: formKey,
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 300,
                child: TextFormField(
                  controller: phoneController,
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                      label: Text("Phone"), border: OutlineInputBorder()),
                  validator: (val) {
                    if (val == null || val.isEmpty) {
                      return "Please Enter Phone";
                    }
                    else if (!RegExp(r'^[0-9]{10}$').hasMatch(val)) {
                    return 'Please enter a valid 10-digit mobile number';
                  }
                    return null;
                  },
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 300,
                child: TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                      label: Text("Email"), border: OutlineInputBorder()),
                  validator: (val) {
                    if (val == null || val.isEmpty) {
                      return "Please Enter Email";
                    }
                    else if (!RegExp(
                          r'\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b')
                      .hasMatch(val)){
                    return 'Please enter a valid email';
                      }
                    return null;
                  },
                ),
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
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const LoginScreen()));
      }),
    );
  }
}
