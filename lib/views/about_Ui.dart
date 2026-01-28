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
      body: Center(
        child: Text('about'),
      ),
    );
  }
}
