import 'package:flutter/material.dart';
import 'package:sevenapp/Data/onboardingdata.dart';
import 'package:sevenapp/Widgets/custombutton.dart';
import 'package:sevenapp/constants/colors.dart';
import 'package:sevenapp/screens/folderonboarding/frontpage.dart';
import 'package:sevenapp/screens/folderonboarding/sharedonboardpages.dart';
import 'package:sevenapp/screens/userdataScreen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  bool showDetailsPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                PageView(
                  controller: _controller,
                  onPageChanged: (index) {
                    setState(() {
                      showDetailsPage = index == 3;
                    });
                  },
                  children: [
                    const FrontPage(),
                    SharedOnboardingPage(
                        title: OnBoardingData.onBoardData[0].title,
                        imgpath: OnBoardingData.onBoardData[0].imgPath,
                        description: OnBoardingData.onBoardData[0].imgPath),
                    SharedOnboardingPage(
                        title: OnBoardingData.onBoardData[1].title,
                        imgpath: OnBoardingData.onBoardData[1].imgPath,
                        description: OnBoardingData.onBoardData[1].imgPath),
                    SharedOnboardingPage(
                        title: OnBoardingData.onBoardData[2].title,
                        imgpath: OnBoardingData.onBoardData[2].imgPath,
                        description: OnBoardingData.onBoardData[2].imgPath),
                  ],
                ),
                Container(
                  alignment: const Alignment(0, 0.75),
                  child: SmoothPageIndicator(
                    controller: _controller,
                    count: 4,
                    effect: const WormEffect(
                      activeDotColor: kMainColor,
                      dotColor: kLightGrey,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: !showDetailsPage
                        ? GestureDetector(
                            onTap: () {
                              _controller.animateToPage(
                                _controller.page!.toInt() + 1,
                                duration: const Duration(milliseconds: 400),
                                curve: Curves.easeInOut,
                              );
                            },
                            child: CustomButton(
                              buttonName: showDetailsPage == true
                                  ? "get Started"
                                  : "Next",
                              buttonColor: kMainColor,
                            ),
                          )
                        : GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const UserDataScreen()),
                              );
                            },
                            child: CustomButton(
                              buttonName: showDetailsPage == true
                                  ? "get Started"
                                  : "Next",
                              buttonColor: kMainColor,
                            ),
                          ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
