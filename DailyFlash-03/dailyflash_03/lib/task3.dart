import 'package:flutter/material.dart';
import 'task4.dart';
class Task3 extends StatefulWidget{
  const Task3({super.key});

  @override
  State<Task3> createState()=>_Task3();
}
class _Task3 extends State<Task3>{
  bool isTapped=false;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(child: 
      GestureDetector(onTap:(){
        setState((){isTapped=true;});
        
      },
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            border: Border.all(color: isTapped?Colors.green:Colors.red,width:2),
          ),
        ),
      )),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Task4()));
      },
      child: const Icon(Icons.forward),),
    );
  }
}