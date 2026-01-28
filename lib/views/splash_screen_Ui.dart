import 'package:flutter/material.dart';
import 'package:flutter_body_heath_calculator_app/views/home_Ui.dart';

class SplashScreenUi extends StatefulWidget {
  const SplashScreenUi({super.key});

  @override
  State<SplashScreenUi> createState() => _SplashScreenUiState();
}

class _SplashScreenUiState extends State<SplashScreenUi> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(
      // time delay
      Duration(seconds: 3),
      //
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => homeUi()),
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffA3D6A6),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/calculator.png',
              width: MediaQuery.of(context).size.width * 0.50,
              height: MediaQuery.of(context).size.width * 0.50,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 50.0,
            ),
            Text(
              'Body Health Calculator',
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.025,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(
              height: 50.0,
            ),
            CircularProgressIndicator(
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
