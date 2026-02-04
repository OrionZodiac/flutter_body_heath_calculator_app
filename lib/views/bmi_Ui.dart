// ignore_for_file: sort_child_properties_last, empty_statements

import 'package:flutter/material.dart';

class bmiUi extends StatefulWidget {
  const bmiUi({super.key});

  @override
  State<bmiUi> createState() => _bmiUiState();
}

class _bmiUiState extends State<bmiUi> {
  //ตัวควบคุม Textfiled
  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  double bmiValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Center(
              child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                "BMI Calculator ",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset("assets/images/bmi.png",
                  height: 150, width: 150, fit: BoxFit.cover),
              SizedBox(
                height: 20,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'weight (kg)',
                  )),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: weightController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter your weight (kg)',
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 20,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'height (cm)',
                  )),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: heightController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter your height (cm)',
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 20,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  //validate input
                  if (weightController.text.isEmpty &&
                      heightController.text.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Please enter your weight and height'),
                        duration: Duration(seconds: 2),
                      ),
                    );
                    return;
                  }
                  ;

                  double weight = double.parse(weightController.text);
                  double height = double.parse(heightController.text);
                  setState(() {
                    bmiValue = weight / ((height / 100) * (height / 100));
                  });
                },
                child: Text('Calculate BMI',
                    style: TextStyle(
                      color: Colors.white,
                    )),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  textStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  fixedSize: Size(MediaQuery.of(context).size.width, 50),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    bmiValue = 0;
                    weightController.clear();
                    heightController.clear();
                  });
                },
                child: Text('Resets',
                    style: TextStyle(
                      color: Colors.white,
                    )),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  textStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  fixedSize: Size(MediaQuery.of(context).size.width, 50),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        'Your BMI is: ',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        bmiValue.toStringAsFixed(2),
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueGrey,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )),
        ),
      ),
    );
  }
}
