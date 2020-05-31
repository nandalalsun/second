import 'package:flutter/material.dart';
import 'package:second/screens/homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  ThemeData dark = new ThemeData.dark();
  ThemeData light = new ThemeData.light();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MS Word Sortcut',
      theme: dark,
      home: HomePage(),
    );
  }
}
