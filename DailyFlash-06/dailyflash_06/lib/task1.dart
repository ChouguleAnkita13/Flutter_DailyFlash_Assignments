import "package:flutter/material.dart";
import 'task2.dart';

class Task1 extends StatelessWidget{
  const Task1({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task1"),
        backgroundColor: Colors.blue,
      ),
      body:Column(
        children:[
          SizedBox(width: double.infinity,
            child: Image.asset("assets/image.png",fit: BoxFit.cover,)),
          Container(
            margin: const EdgeInsets.all(10),
            child:const Column(   
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Pizza",style:TextStyle(
                  fontSize:23,
                  fontWeight:FontWeight.w700,
                )),
                SizedBox(height: 20,),
                Text("The large circle of flat bread baked with cheese,tomatoes,and vegatables spread on top",
                style:TextStyle(
                  color: Color.fromARGB(255, 90, 88, 88),
                  fontSize:18,
                  fontWeight:FontWeight.w400,
                ))

              ],
            )
          )
        ]
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Task2()));

      },
      child:const Icon(Icons.forward)
      ),
    );

  }

}