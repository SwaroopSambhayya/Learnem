import 'package:flutter/material.dart';
import 'package:learnem/screens/home.dart';
import 'package:learnem/screens/lessons.dart';
import 'package:learnem/screens/onboarding.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learnem',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xff527788),
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Color(0xFFD6D2D1), fontFamily: "Lexend"),
          headline3: TextStyle(color: Color(0xffD6D2D1), fontFamily: "Abril"),
        ),
        fontFamily: "Lexend",
        primaryColor: Color(0xffF8F2DB),
        accentColor: Color(0xff53798A),
        bottomAppBarColor: Color(0xffF8F2DB),
      ),
      debugShowCheckedModeBanner: false,
      home: Onboarding(),
    );
  }
}
