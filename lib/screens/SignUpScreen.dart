import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutteruikit/styles/theme.light.dart';
import 'package:flutteruikit/widgets/sm_button.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _textEditingController;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DefaultTheme.onboardingBg,
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(20),
                      alignment: Alignment.center,
                      child: Text(
                        'Create Account',
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Image.asset('assets/images/office.png'),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    color: DefaultTheme.white,
                  ),
                  // color: DefaultTheme.white,
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        controller: _textEditingController,
                        decoration: InputDecoration(labelText: 'First Name'),
                      ),
                      TextFormField(
                        controller: _textEditingController,
                        decoration: InputDecoration(labelText: 'Last Name'),
                      ),
                      TextFormField(
                        controller: _textEditingController,
                        decoration: InputDecoration(labelText: 'Display Name'),
                      ),
                      TextFormField(
                        controller: _textEditingController,
                        decoration: InputDecoration(labelText: 'Email'),
                      ),
                      TextFormField(
                        controller: _textEditingController,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 20),
                        // width: double.infinity,
                        // alignment: Alignment.center,
                        child: SmartButton.raisedButton(
                          onPress: _onPress,
                          text: "SignUp",
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Already have an account?',
                              style: TextStyle(
                                color: DefaultTheme.primaryBlue,
                                fontSize: 16,
                              ),
                            ),
                            FlatButton(
                              onPressed: () =>
                                  Navigator.of(context).pushNamed('login'),
                              child: Text(
                                'Login',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: DefaultTheme.primaryBlue,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  _onPress() {
    Navigator.of(context).pushNamed('family');
  }
}
