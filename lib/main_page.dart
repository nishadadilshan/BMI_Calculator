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
  late double bmi= calculateBmi(height: height, weight: weight);
  String gender = "";


  double calculateBmi({ required int height, required int weight}){
    bmi = weight/ (height/100 * height/100);
    return bmi;
  }

  static String getResult(bmiValue){
    if(bmiValue >= 25){
      return "Overweight";
    }else if (bmiValue > 18.5){
      return "Normal";
    }else{
      return "UnderWeight";
    }
  }

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
              const SizedBox(height: 20,),
               Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        gender = "M";
                      });
                    },
                    child: Container(
                      width: 175,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: gender == "M" ? Colors.orangeAccent.withAlpha(180) : Colors.orangeAccent.withAlpha(100) ,
                      ),

                      child: const Column(
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
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        gender="F";
                      });
                    },
                    child: Container(
                      width: 175,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: gender == "F" ? Colors.orangeAccent.withAlpha(180) : Colors.orangeAccent.withAlpha(100) ,
                      ),
                      child: const Column(
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
                                  if (height > 50) {
                                    height--;
                                  }
                                });
                                // print(height);
                               bmi = calculateBmi(height: height, weight: weight);
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
                                  if (height < 250) {
                                    height++;
                                  }
                                });
                                bmi = calculateBmi(height: height, weight: weight);
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
                                    if(weight > 10) {
                                      weight--;
                                    }
                                  });
                                  bmi = calculateBmi(height: height, weight: weight);
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
                                  if(weight < 200) {
                                    weight++;
                                  }
                                });
                                bmi = calculateBmi(height: height, weight: weight);
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
               Column(
                children: [
                  const Text(
                    "BMI",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    bmi.toStringAsFixed(2),
                    style: kOutPutText,
                  ),
                  Text(getResult(bmi), style: TextStyle(
                      fontWeight:FontWeight.bold,
                      fontSize: 30,
                      color: getResult(bmi) == "Normal" ? Colors.green : Colors.red),)
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
