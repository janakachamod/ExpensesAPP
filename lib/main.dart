import 'package:flutter/material.dart';
import 'package:sevenapp/screens/onboardingscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Expenses',
      theme: ThemeData(
        fontFamily: 'Inter',
      ),
      home: OnboardingScreen(),
    );
  }
}
