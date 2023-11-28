import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

  rollDice() {
    setState(() {
      currentDiceRoll = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/dice-$currentDiceRoll.png",
          width: 150,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 20)),
          child: const Text('Roll dice'),
        )
      ],
    );
  }
}
