import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() => runApp(ParentsCalculator());

class ParentsCalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputPage(),
    );
  }
}
