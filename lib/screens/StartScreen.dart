import 'package:flutter/material.dart';
import 'package:flutteruikit/styles/theme.light.dart';
import 'package:flutteruikit/widgets/sm_button.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DefaultTheme.primaryBlue,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 100),
              alignment: Alignment.center,
              child: Image.asset(
                'assets/images/logo.png',
                width: 120,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 100),
              alignment: Alignment.center,
              child: Text(
                'Welcome to',
                style: TextStyle(color: DefaultTheme.lightGray, fontSize: 28),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                'INHOUSE',
                style: TextStyle(color: DefaultTheme.white, fontSize: 48),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(vertical: 22),
                    child: SmartButton.raisedButton(
                      onPress: ()=> Navigator.of(context).pushNamed('login'),
                      inverse: true,
                      text: 'Sign In'
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Don’t have an account?',
                          style: TextStyle(
                            color: DefaultTheme.white,
                            fontSize: 16,
                          ),
                        ),
                        FlatButton(
                          onPressed: ()=> Navigator.of(context).pushNamed('signup'),
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: DefaultTheme.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

}
