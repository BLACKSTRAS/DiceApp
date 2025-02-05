import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/styled_text.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice-1.png';
  @override
  Widget build(BuildContext context) {
// Suggested code may be subject to a license. Learn more: ~LicenseLog:2541724159.
    return Column(
                mainAxisSize: MainAxisSize.min //กำกับขนาดของcolumn
                ,
                children: [
              Image.asset(
                activeDiceImage,
                height: 200,
                width: 200,
              ),
              const SizedBox(
                height: 30,
              ), //แทรกภาพ
              TextButton(
                  onPressed: rollDice,
                  style: TextButton.styleFrom(
                      padding: const EdgeInsets.only(top: 20),
                      foregroundColor: Colors.white),
                  child: const StyledText("Roll Dice"))
            ]);
  }

  void rollDice() {
    setState(() {
      var diceRoll = Random().nextInt(6) + 1;
      activeDiceImage = 'assets/images/dice-$diceRoll.png';
      print("image is changing");
    });
  }
}
