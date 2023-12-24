import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.deepPurple,
        cardColor: Colors.white,
        canvasColor: creamColor,
        buttonTheme: ButtonThemeData(
          colorScheme: ColorScheme.light(primary: Colors.black),
        ),
        appBarTheme: const AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        scaffoldBackgroundColor: Vx.white,
        textTheme: Theme.of(context).textTheme.copyWith(
              bodyLarge: TextStyle(color: Colors.blue),
              bodySmall: TextStyle(color: Colors.blue),
            ),
      );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
        cardColor: Colors.black,
        canvasColor: darkcreamColor,
        scaffoldBackgroundColor: Vx.gray400,
        buttonTheme: ButtonThemeData(
          colorScheme: ColorScheme.light(primary: Colors.blue),
        ),
        appBarTheme: const AppBarTheme(
          color: Colors.black,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.white),
        ),
        textTheme: Theme.of(context).textTheme.copyWith(
              bodyLarge: TextStyle(color: Colors.lightBlue),
              bodySmall: TextStyle(color: Colors.white),
            ),
      );
}

const Color creamColor = Color(0xfff5f5f5);
const Color neavyBlue = Color(0xff403b58);
const Color darkcreamColor = Vx.gray800;
const Color lightBlue = Vx.blue300;
