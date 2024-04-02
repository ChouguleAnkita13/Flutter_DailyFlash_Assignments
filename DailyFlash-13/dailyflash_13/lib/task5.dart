import 'package:dailyflash_13/task2.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController uNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task5"),
      ),
      body: Form(
        key: _formKey,
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Welcome",style: TextStyle(fontSize: 30),),
              SizedBox(height: 10,),
              SizedBox(
                width: 300,
                child: TextFormField(
                  controller: uNameController,
                  maxLength: 20,
                  decoration: const InputDecoration(
                      label: Text("UserName"), border: OutlineInputBorder()),
                  validator: (val) {
                    if (val == null || val.isEmpty) {
                      return "Please Enter Username";
                    }
                    else if(val.length<6 || val.length>20){
                      return "Username must in range 6 to 20 character";
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
                  controller: passwordController,
                  maxLength: 20,
                  decoration: const InputDecoration(
                      label: Text("Password"), border: OutlineInputBorder()),
                  validator: (val) {
                    if (val == null || val.isEmpty) {
                      return "Please Enter Password";
                    } 
                    else if(val.length<8 || val.length>20){
                      return "Password must in range 8 to 20";
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
                    _formKey.currentState!.validate();
                  },
                  child: const Text("Login"))
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Task2()));
      }),
    );
  }
}
