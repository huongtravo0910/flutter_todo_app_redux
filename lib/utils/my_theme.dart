import 'package:flutter/material.dart';

class MyTheme {
  Color _green = Color.fromARGB(255, 132, 143, 0);
  Color _violet = Color.fromARGB(255, 60, 45, 65);
  Color _greyLight = Color.fromARGB(255, 255, 248, 240);

  ThemeData buildTheme() {
    return ThemeData(
        canvasColor: _greyLight,
        primaryColor: _violet,
        secondaryHeaderColor: _green,
        accentColor: _green,
        hintColor: _greyLight,
        buttonTheme: ButtonThemeData(
          buttonColor: _green,
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          minWidth: 150,
          height: 40.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40.0),
          ),
        ),
        textTheme: TextTheme(
          bodyText2: TextStyle(
            //14
            color: Colors.black,
          ),
          bodyText1: TextStyle(
            //16
            color: Colors.black,
          ),
          button: TextStyle(
            color: Colors.red,
          ),
        ));
  }
}
