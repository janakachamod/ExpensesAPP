import 'package:flutter/material.dart';
import 'package:sevenapp/screens/mainscreen.dart';
import 'package:sevenapp/screens/onboardingscreen.dart';

class Wrapper extends StatefulWidget {
  final bool showmainPage;
  const Wrapper({super.key, required this.showmainPage});

  @override
  State<Wrapper> createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {
    return widget.showmainPage ? const MainScreen() : OnboardingScreen();
  }
}
