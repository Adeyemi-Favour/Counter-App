import 'package:counter_app/homePage.dart';
import 'package:flutter/material.dart';


void main() => runApp(counterApp());

class counterApp extends StatelessWidget {
  const counterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter App',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.lightBlueAccent,
          centerTitle: true
        ), floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: Colors.lightBlueAccent
      )
      ),
      home: homePage(),
    );
  }
}
