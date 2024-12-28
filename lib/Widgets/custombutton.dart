import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonName;
  final Color buttonColor;
  const CustomButton(
      {super.key, required this.buttonName, required this.buttonColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.06,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: buttonColor,
      ),
      child: Center(
        child: Text(
          buttonName,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
