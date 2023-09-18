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
                      Icon(Icons.male),
                       Text("Male"),
                     ],
                   ),
                 ),
                 Spacer(),
                 Padding(
                   padding: EdgeInsets.all(10.0),
                   child: Column(
                     children: [
                       Icon(Icons.female),
                       Text("Female"),
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
