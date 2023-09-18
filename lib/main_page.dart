import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SafeArea(
       child: Container(
         color: Colors.white,
         child: const Column(
           children: [
             Row(
               children: [
                 Padding(
                   padding: EdgeInsets.all(10.0),
                   child: Column(
                     children: [
                      Icon(Icons.male, size: 150,),
                       Text("Male"),
                     ],
                   ),
                 ),
                 Spacer(),
                 Padding(
                   padding: EdgeInsets.all(10.0),
                   child: Column(
                     children: [
                       Icon(Icons.female, size: 150,),
                       Text("Female"),
                     ],
                   ),
                 )
               ],
             ),
             Row(
               children: [
                 Padding(
                   padding: EdgeInsets.all(10.0),
                   child: Column(
                     children: [
                       Text("Height" , style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                       Text("176", style: TextStyle(color: Colors.blue, fontSize: 60, fontWeight:FontWeight.bold),),
                       Row(
                        children: [
                          FloatingActionButton(onPressed:null,backgroundColor: Colors.redAccent,shape:CircleBorder(), child: Icon(Icons.remove, size: 30,),),
                          SizedBox(width: 15),
                          FloatingActionButton(onPressed:null,backgroundColor: Colors.greenAccent,shape:CircleBorder(), child: Icon(Icons.add , size: 30,),)
                        ], 
                       )
                     ],
                   ),
                 ),
                 Spacer(),
                 Padding(
                   padding: EdgeInsets.all(10.0),
                   child: Column(
                     children: [
                       Text("Weight" , style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                       Text("90", style: TextStyle(color: Colors.blue, fontSize: 60, fontWeight:FontWeight.bold),),
                       Row(
                         children: [
                         FloatingActionButton(onPressed:null,backgroundColor: Colors.redAccent,shape:CircleBorder(), child: Icon(Icons.remove, size: 30,)),
                     SizedBox(width: 15),
                     FloatingActionButton(onPressed:null,backgroundColor: Colors.greenAccent,shape:CircleBorder(), child: Icon(Icons.add , size: 30,),)
                     ],
                       )
                     ],
                   ),
                 )
               ],
             )
           ],
         ),
       ),
     )
    );
  }
}
