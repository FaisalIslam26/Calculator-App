import 'package:calculatorapp/calculator.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(CalculatorApp());
}

String input = '', value = '';

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: 'LibreBaskerville'),
        debugShowCheckedModeBanner: false,
        home: Home());
  }
}
