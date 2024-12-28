import 'package:flutter/material.dart';
import 'package:sevenapp/constants/colors.dart';

class FrontPage extends StatelessWidget {
  const FrontPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/logo.png',
          width: 100,
          fit: BoxFit.cover,
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "Expenze",
          style: TextStyle(
            fontSize: 40,
            color: kMainColor,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
