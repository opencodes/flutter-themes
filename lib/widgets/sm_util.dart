import 'package:flutter/material.dart';
import 'package:flutteruikit/styles/theme.light.dart';

class Util {
  static indicator(activeIndex, length) {
    List list = List.generate(length, (index) {
      return index;
    });
    return Container(
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: list.map((index) {
            return Icon(Icons.lens, size: 16, color: activeIndex == index? DefaultTheme.primaryBlue:DefaultTheme.gray);

          }).toList()),
    );
  }
}
