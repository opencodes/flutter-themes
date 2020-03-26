import 'package:flutter/material.dart';
import 'package:flutteruikit/styles/theme.light.dart';
import 'package:flutteruikit/widgets/sm_button.dart';
import 'package:flutteruikit/widgets/sm_util.dart';

class OnboardingSteps {
  static welcome(_onPress) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.topRight,
                child: SmartButton.flatButton(onPress: _onPress, text: 'Skip'),
              ),
              Container(
                alignment: Alignment.center,
                child: Image.asset('assets/images/welcome.png'),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            color: DefaultTheme.white,
            child: Column(
              children: <Widget>[
                Container(
                  child: Util.indicator(0, 5),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  alignment: Alignment.center,
                  child: Text(
                    'Welcome to InHouse',
                    style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  alignment: Alignment.center,
                  child: Text(
                    "Manage your home offairs, it's simple and easy",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                
              ],
            ),
          ),
        )
      ],
    );
  }

  static getStepTwo(_onPress) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.topRight,
                child: SmartButton.flatButton(onPress: _onPress, text: 'Skip'),
              ),
              Container(
                alignment: Alignment.center,
                child: Image.asset('assets/images/welcome.png'),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            color: DefaultTheme.white,
            child: Column(
              children: <Widget>[
                Container(
                  child: Util.indicator(1, 5),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  // alignment: Alignment.center,
                  child: Text(
                    'Track your family activity.',
                    style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  alignment: Alignment.center,
                  child: Text(
                    "Manage your family activity like finaance, todo, travel, events",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                
              ],
            ),
          ),
        )
      ],
    );
  }

  static getStepThree(_onPress) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.topRight,
                child: SmartButton.flatButton(onPress: _onPress, text: 'Skip'),
              ),
              Container(
                alignment: Alignment.center,
                child: Image.asset('assets/images/track.png'),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            color: DefaultTheme.white,
            child: Column(
              children: <Widget>[
                Container(
                  child: Util.indicator(2, 5),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  alignment: Alignment.center,
                  child: Text(
                    'Your Email',
                    style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  alignment: Alignment.center,
                  child: Text(
                    "Set your target and goals",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  static getStepFour(_onPress) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.topRight,
                child: SmartButton.flatButton(onPress: _onPress, text: 'Skip'),
              ),
              Container(
                alignment: Alignment.center,
                child: Image.asset('assets/images/onboarding-1.png'),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            color: DefaultTheme.white,
            child: Column(
              children: <Widget>[
                Container(
                  child: Util.indicator(3, 5),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  alignment: Alignment.center,
                  width: double.infinity,
                  child: Text(
                    'Onboard whole family member, connect and share',
                    style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  alignment: Alignment.center,
                  child: Text(
                    "Manage your home offairs, it's simple and easy",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  static getStepFive(_onPress) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.topRight,
                child: SmartButton.flatButton(onPress: _onPress, text: 'Skip'),
              ),
              Container(
                alignment: Alignment.center,
                child: Image.asset('assets/images/running.png'),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            color: DefaultTheme.white,
            child: Column(
              children: <Widget>[
                Container(
                  child: Util.indicator(4, 5),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  alignment: Alignment.center,
                  child: Text(
                    'Start',
                    style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  alignment: Alignment.center,
                  child: Text(
                    "Manage your home offairs, it's simple and easy",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(40),
                  // width: double.infinity,
                  // alignment: Alignment.center,
                  child: SmartButton.raisedButton(onPress: _onPress, text: "Let's Get Started"),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
