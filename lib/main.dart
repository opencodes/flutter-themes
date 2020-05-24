import 'package:flutter/material.dart';
import 'package:flutteruikit/screens/CreateFamilyScreen.dart';
import 'package:flutteruikit/screens/DashboardScreen.dart';
import 'package:flutteruikit/screens/DemoScreen.dart';
import 'package:flutteruikit/screens/JoinFamilyScreen.dart';
import 'package:flutteruikit/screens/LoginScreen.dart';
import 'package:flutteruikit/screens/SignUpScreen.dart';
import 'package:flutteruikit/screens/StartScreen.dart';
import 'package:flutteruikit/screens/onboarding/OnboardingScreen.dart';
import 'package:flutteruikit/styles/theme.light.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: DefaultTheme.lightTheme,
      initialRoute: 'onboarding',
      routes: {
        'onboarding': (BuildContext context)=> Onboarding(),
        'start': (BuildContext context)=> StartScreen(),
        'login': (BuildContext context)=> LoginScreen(),
        'signup': (BuildContext context)=> SignUpScreen(),
        'family': (BuildContext context) => CreateFamilyScreen(),
        'joinfamily': (BuildContext context) => JoinFamilyScreen(),
        'dashboard': (BuildContext context) => DashboardScreen(),
        'demo': (BuildContext context) => DemoScreen()
      },
    );
  }
}
