import 'package:flutter/material.dart';

class bmiUi extends StatefulWidget {
  const bmiUi({super.key});

  @override
  State<bmiUi> createState() => _bmiUiState();
}

class _bmiUiState extends State<bmiUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Bmi'),
      ),
    );
  }
}
