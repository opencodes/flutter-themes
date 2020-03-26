import 'package:flutter/material.dart';
import 'package:flutteruikit/styles/theme.light.dart';
import 'package:flutteruikit/widgets/sm_button.dart';

class CreateFamilyScreen extends StatefulWidget {
  @override
  _CreateFamilyScreenState createState() => _CreateFamilyScreenState();
}

class _CreateFamilyScreenState extends State<CreateFamilyScreen> {
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
                        'Creat Family',
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Image.asset('assets/images/privacy.png'),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
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
                        decoration: InputDecoration(labelText: 'Family Name'),
                      ),
                      TextFormField(
                        controller: _textEditingController,
                        decoration: InputDecoration(labelText: 'No of Faily Members'),
                      ),
                      TextFormField(
                        controller: _textEditingController,
                        decoration: InputDecoration(labelText: 'Location'),
                      ),
                      
                      Container(
                        padding: EdgeInsets.only(top: 20),
                        // width: double.infinity,
                        // alignment: Alignment.center,
                        child: SmartButton.raisedButton(
                          onPress: _onPress,
                          text: "Create Family",
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Join an existing Family?',
                              style: TextStyle(
                                color: DefaultTheme.primaryBlue,
                                fontSize: 16,
                              ),
                            ),
                            FlatButton(
                              onPressed: () =>
                                  Navigator.of(context).pushNamed('joinfamily'),
                              child: Text(
                                'Join',
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

  _onPress() {}
}
