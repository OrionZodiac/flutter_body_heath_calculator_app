import 'package:flutter/material.dart';

class bmrUi extends StatefulWidget {
  const bmrUi({super.key});

  @override
  State<bmrUi> createState() => _bmrUiState();
}

class _bmrUiState extends State<bmrUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Bmr'),
      ),
    );
  }
}
