import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_projects/constants.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int height = 150;
  int weight = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        // padding for horizontal only.
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Icon(
                          Icons.male,
                          size: 150,
                        ),
                        Text(
                          "Male",
                          style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Icon(
                          Icons.female,
                          size: 150,
                        ),
                        Text(
                          "Female",
                          style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        const Text(
                          "Height(cm)",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        Text("$height", style: kHeightWidthText),
                        Row(
                          children: [
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  height--;
                                });
                                // print(height);
                              },
                              backgroundColor: Colors.redAccent,
                              shape: const CircleBorder(),
                              child: const Icon(
                                Icons.remove,
                                size: 30,
                              ),
                            ),
                            const SizedBox(width: 15),
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  height++;
                                });
                              },
                              backgroundColor: Colors.greenAccent,
                              shape: const CircleBorder(),
                              child: const Icon(
                                Icons.add,
                                size: 30,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        const Text(
                          "Weight(Kg)",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        Text("$weight", style: kHeightWidthText),
                        Row(
                          children: [
                            FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                backgroundColor: Colors.redAccent,
                                shape: const CircleBorder(),
                                child: const Icon(
                                  Icons.remove,
                                  size: 30,
                                )),
                            const SizedBox(width: 15),
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              backgroundColor: Colors.greenAccent,
                              shape: const CircleBorder(),
                              child: const Icon(
                                Icons.add,
                                size: 30,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 50),
              const Column(
                children: [
                  Text(
                    "BMI",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    "25.6",
                    style: kOutPutText,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
