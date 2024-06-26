// ignore_for_file: avoid_dynamic_calls, prefer_int_literals

import 'package:dnd_app/data/data.dart';
import 'package:flutter/material.dart';

class DiceButton extends StatefulWidget {
  const DiceButton({
    required this.onPressed,
    required this.dice,
    super.key,
  });

  final Function onPressed;
  final DiceModel dice;

  @override
  State<DiceButton> createState() => _DiceButtonState();
}

class _DiceButtonState extends State<DiceButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        backgroundColor: Colors.black,
      ),
      onPressed: () async {
        await _controller.forward(from: 0);
        widget.onPressed();
      },
      child: RotationTransition(
        turns: Tween(begin: 0.0, end: 1.0).animate(
          _controller,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Image.asset(
            widget.dice.img,
            color: Colors.white,
            height: 35,
          ),
        ),
      ),
    );
  }
}
