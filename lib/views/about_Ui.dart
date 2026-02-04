import 'package:flutter/material.dart';

class aboutUi extends StatefulWidget {
  const aboutUi({super.key});

  @override
  State<aboutUi> createState() => _aboutUiState();
}

class _aboutUiState extends State<aboutUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Body health Calculator',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Image.asset(
                  'assets/images/calculator.png',
                  height: 150,
                  width: 150,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 20),
                Text(
                  'คำนวนหาค่าดัชนีมวลกาย (BMI)',
                ),
                SizedBox(height: 10),
                Text(
                  'คำนวนหาค่าพลังงานที่ใช้ในแต่ละวัน (BMR)',
                ),
              ],
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvKOAXQggauEMUGp24GCBfJHH4MHsnLOEQ0A&s',
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 10),
                Text(
                  'Developed by endfield industries',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
