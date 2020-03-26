import 'package:flutter/material.dart';
import 'package:flutteruikit/styles/theme.light.dart';
import 'package:flutteruikit/widgets/sm_button.dart';

class JoinFamilyScreen extends StatefulWidget {
  @override
  _JoinFamilyScreenState createState() => _JoinFamilyScreenState();
}

class _JoinFamilyScreenState extends State<JoinFamilyScreen> {
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
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(20),
                      alignment: Alignment.center,
                      child: Text(
                        'Join Family',
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
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
                      Expanded(
                        child: ListView.builder(
                            itemCount: 10,
                            itemBuilder: (c, index) {
                              return ListTile(
                                leading: Icon(
                                  Icons.group,
                                  size: 40,
                                  color: DefaultTheme.midnightBlue,
                                ),
                                title: Text(
                                  'Smart Family - 4',
                                  style: TextStyle(
                                    fontSize: 19,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                subtitle: Text(
                                  'Munnekollala, Bangalore',
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                                trailing: SmartButton.raisedButton(
                                  onPress: _onPress,
                                  text: 'Join',
                                ),
                              );
                            }),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Didn't find the Family?",
                              style: TextStyle(
                                color: DefaultTheme.primaryBlue,
                                fontSize: 16,
                              ),
                            ),
                            FlatButton(
                              onPressed: () =>
                                  Navigator.of(context).pushNamed('family'),
                              child: Text(
                                'Create',
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
    Navigator.of(context).pushNamed('dashboard');
  }
}
