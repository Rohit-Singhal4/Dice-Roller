import 'package:flutter/material.dart';
import 'package:roll_dice/dice_roller.dart';

// Gradient Alignment
const startAlignment = Alignment.topCenter;
const endAlignment = Alignment.bottomCenter;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colorStart, this.colorEnd, {super.key});

  final Color colorStart;
  final Color colorEnd;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            colorStart,
            colorEnd,
          ],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
