import 'package:dnd_app/data/data.dart';
import 'package:dnd_app/views/views.dart';
import 'package:flutter/material.dart';

class ListOfRolls extends StatelessWidget {
  const ListOfRolls(
      {super.key,
      required this.rolls,
      required this.dice,
      required this.modifier});

  final List<int> rolls;
  final Dice dice;
  final int modifier;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      children: rolls
          .map(
            (roll) => RollChip(
              roll: roll,
              modifier: modifier,
              dice: dice,
            ),
          )
          .toList(),
    );
  }
}