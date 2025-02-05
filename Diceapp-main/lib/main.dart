import 'package:flutter/material.dart';
import 'package:myapp/gradient_container.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
        backgroundColor: Color.fromARGB(100, 89, 150, 30),
        body: GradientContainer()),
  ));
}


