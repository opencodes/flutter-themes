import 'package:flutter/material.dart';
import 'package:flutteruikit/styles/theme.light.dart';

class SmartButton {
  //Outline Colored Button
  static outlineButton(Function _onPress) {
    return OutlineButton(
      padding: EdgeInsets.symmetric(horizontal: 70, vertical: 6),
      textColor: DefaultTheme.primaryBlue,
      borderSide: BorderSide(width: 1, color: DefaultTheme.primaryBlue),
      shape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(20),
      ),
      onPressed: _onPress,
      child: Text(
        'Next',
        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 19),
      ),
    );
  }

  static raisedButton({@required Function onPress, bool inverse = false, String text='Button'}) {
    return RaisedButton(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      color: inverse ? DefaultTheme.white : DefaultTheme.primaryBlue,
      shape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(30),
      ),
      onPressed: onPress,
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 19,
          color: inverse ? DefaultTheme.primaryBlue : DefaultTheme.white,
        ),
      ),
    );
  }

  static flatButton({Function onPress, bool inverse = false, text: 'Button'}) {
    return FlatButton(
      onPressed: onPress,
      child: Text(
        text,
        style: TextStyle(
            color: inverse ? DefaultTheme.white : DefaultTheme.primaryBlue),
      ),
    );
  }
}
