// ignore_for_file: sort_child_properties_last, empty_statements

import 'package:flutter/material.dart';

class bmrUi extends StatefulWidget {
  const bmrUi({super.key});

  @override
  State<bmrUi> createState() => _bmrUiState();
}

class _bmrUiState extends State<bmrUi> {
  //ตัวควบคุม Textfiled
  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  String selectedGender = 'Male'; // Default gender
  double bmrValue = 0;

  // BMR Calculation Function
  void calculateBMR() {
    if (weightController.text.isEmpty ||
        heightController.text.isEmpty ||
        ageController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Please enter all values (weight, height, and age)'),
          duration: Duration(seconds: 2),
        ),
      );
      return;
    }

    double weight = double.parse(weightController.text);
    double height = double.parse(heightController.text);
    double age = double.parse(ageController.text);

    double bmr;

    if (selectedGender == 'Male') {
      // For males: BMR = 66 + (13.7 x weight) + (5 x height) – (6.8 x age)
      bmr = 66 + (13.7 * weight) + (5 * height) - (6.8 * age);
    } else {
      // For females: BMR = 665 + (9.6 x weight) + (1.8 x height) – (4.7 x age)
      bmr = 665 + (9.6 * weight) + (1.8 * height) - (4.7 * age);
    }

    setState(() {
      bmrValue = bmr;
    });
  }

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
                "BMR Calculator ",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset("assets/images/bmr.png",
                  height: 150, width: 150, fit: BoxFit.cover),
              SizedBox(
                height: 20,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Gender',
                  )),
              SizedBox(
                height: 10,
              ),
              DropdownButton<String>(
                value: selectedGender,
                isExpanded: true,
                items: ['Male', 'Female'].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    selectedGender = newValue!;
                  });
                },
              ),
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
                height: 20,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'age (years)',
                  )),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: ageController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter your age (years)',
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
                onPressed: calculateBMR,
                child: Text('Calculate BMR',
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
                    bmrValue = 0;
                    weightController.clear();
                    heightController.clear();
                    ageController.clear();
                    selectedGender = 'Male';
                  });
                },
                child: Text('Reset',
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
                        'Your BMR is: ',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        bmrValue.toStringAsFixed(2),
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueGrey,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'kcal/day',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[700],
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
