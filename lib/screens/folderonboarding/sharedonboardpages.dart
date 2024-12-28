import 'package:flutter/material.dart';
import 'package:sevenapp/constants/colors.dart';
import 'package:sevenapp/constants/padding.dart';

class SharedOnboardingPage extends StatelessWidget {
  final String title;
  final String imgpath;
  final String description;
  const SharedOnboardingPage(
      {super.key,
      required this.title,
      required this.imgpath,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefalutPadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imgpath,
            width: 300,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: kMainColor,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: kGrey,
            ),
          ),
        ],
      ),
    );
  }
}
