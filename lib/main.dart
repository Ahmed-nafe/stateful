import 'package:flutter/material.dart';
import 'package:stateful/Screens/HomeSreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home :HomeScreen(),
    );
  }
}
