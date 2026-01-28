import 'package:flutter/material.dart';
import 'package:flutter_body_heath_calculator_app/views/splash_screen_Ui.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    Flutterbodyheathcalculator(),
  );
}

class Flutterbodyheathcalculator extends StatefulWidget {
  const Flutterbodyheathcalculator({super.key});

  @override
  State<Flutterbodyheathcalculator> createState() =>
      _FlutterbodyheathcalculatorState();
}

class _FlutterbodyheathcalculatorState
    extends State<Flutterbodyheathcalculator> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreenUi(),
      theme: ThemeData(
        textTheme: GoogleFonts.kanitTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
    );
  }
}
