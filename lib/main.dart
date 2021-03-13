import 'package:flutter/material.dart';
import 'package:radio_flutter/screens/homePage.dart';
import 'package:radio_flutter/screens/home_screen.dart';
import 'package:radio_flutter/screens/onboarding_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: OnboardingScreen(),
    );
  }
}
