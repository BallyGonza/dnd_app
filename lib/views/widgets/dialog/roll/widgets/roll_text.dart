import 'package:flutter/material.dart';

class RollText extends StatelessWidget {
  const RollText({
    required this.roll,
    super.key,
  });

  final int roll;

  @override
  Widget build(BuildContext context) {
    return Text(
      roll.toString(),
      style: TextStyle(
        fontSize: 20,
        color: roll == 1
            ? Colors.red
            : roll == 20
                ? Colors.green
                : Colors.black,
        fontWeight: FontWeight.normal,
      ),
    );
  }
}
