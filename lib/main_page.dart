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
                 Column(
                   children: [
                     Text("Male Icon"),
                     Text("Male"),
                   ],
                 ),
                 Column(
                   children: [
                     Text("Female Icon"),
                     Text("Female"),
                   ],
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
