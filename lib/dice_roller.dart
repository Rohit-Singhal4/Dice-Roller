import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

// Underscore = Private class
class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 1;

  void rollDiceFunc() {
    //Eliminates duplicates
    int tempRoll;
    do {
      tempRoll = randomizer.nextInt(6) + 1;
    } while (tempRoll == currentDiceRoll);

    setState(() {
      currentDiceRoll = tempRoll;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/dice-$currentDiceRoll.png', width: 200),
        TextButton(
          onPressed: rollDiceFunc,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(
              top: 20,
            ),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 28),
          ),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
