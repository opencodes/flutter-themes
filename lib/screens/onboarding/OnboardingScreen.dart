import 'package:flutter/material.dart';
import 'package:flutteruikit/screens/onboarding/onboarding/OnboardingSteps.dart';
import 'package:flutteruikit/styles/theme.light.dart';

class Onboarding extends StatefulWidget {
  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int step = 1;

  void _onPress() {
    print(step);
    Navigator.of(context).pushNamed('start');
  }

  PageController _pageController = new PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DefaultTheme.onboardingBg,
      body: SafeArea(
        child: PageView(
          controller: _pageController,
          children: <Widget>[
            OnboardingSteps.welcome(_onPress),
            OnboardingSteps.getStepTwo(_onPress),
            OnboardingSteps.getStepThree(_onPress),
            OnboardingSteps.getStepFour(_onPress),
            OnboardingSteps.getStepFive(_onPress)
          ],
        ),
      ),
    );
  }

}
