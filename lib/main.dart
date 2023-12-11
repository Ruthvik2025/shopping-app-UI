import 'package:days_30_flutter/pages/home_pade.dart';
import 'package:days_30_flutter/pages/login_page.dart';
import 'package:days_30_flutter/utili/class_route.dart';
import 'package:days_30_flutter/widgets/themedata.dart';
import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lighttheme(context),
      darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: "/",
      routes: {
        "/": (context) => LoginPage(),
        MyRoute.loginRoute: (context) => LoginPage(),
        MyRoute.homeRoute: (context) => const HomePage(),
      },
    );
  }
}
