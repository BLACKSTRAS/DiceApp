import 'package:flutter/material.dart';
import 'package:myapp/dice_roller.dart';
import 'dart:math';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});
  @override
  Widget build(BuildContext context) {
// Suggested code may be subject to a license. Learn more: ~LicenseLog:2541724159.
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.purple, Colors.deepPurple, Colors.black])),
      child: Center(child: DiceRoller()),
    );
  }
}
