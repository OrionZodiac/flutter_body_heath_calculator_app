import 'package:flutter/material.dart';
import 'package:flutter_body_heath_calculator_app/views/about_Ui.dart';
import 'package:flutter_body_heath_calculator_app/views/bmi_Ui.dart';
import 'package:flutter_body_heath_calculator_app/views/bmr_Ui.dart';

class homeUi extends StatefulWidget {
  const homeUi({super.key});

  @override
  State<homeUi> createState() => _homeUiState();
}

class _homeUiState extends State<homeUi> {
  //create control currentindex
  int currentIndexStatus = 1;
  //create val collet widget body
  List<Widget> showBody = [
    bmiUi(),
    aboutUi(),
    bmrUi(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff123456),
        title: Text(
          'Body Health Calculator',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            currentIndexStatus = value;
          });
        },
        currentIndex: currentIndexStatus,
        selectedItemColor: Color(0xff156785),
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_2_outlined,
              ),
              label: 'Bmi'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'about'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.sports_gymnastics,
              ),
              label: 'Bmr'),
        ],
      ),
      body: showBody[currentIndexStatus],
    );
  }
}
