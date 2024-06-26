import 'package:dnd_app/data/data.dart';
import 'package:flutter/material.dart';

class RollChip extends StatelessWidget {
  const RollChip({
    required this.roll,
    required this.modifier,
    required this.dice,
    super.key,
  });

  final int roll;
  final int modifier;
  final DiceModel dice;

  @override
  Widget build(BuildContext context) {
    return Chip(
      shape: const CircleBorder(),
      side: const BorderSide(
        color: Colors.transparent,
      ),
      backgroundColor: (roll == 1)
          ? lowestDiceColor
          : (roll == dice.sides)
              ? highestDiceColor
              : Colors.black,
      label: Text(
        '$roll',
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
