// ignore_for_file: avoid_dynamic_calls, prefer_int_literals

import 'package:dnd_app/data/data.dart';
import 'package:flutter/material.dart';

class WeaponButton extends StatefulWidget {
  const WeaponButton({
    required this.onPressed,
    required this.weapon,
    super.key,
  });

  final Function onPressed;
  final WeaponModel weapon;

  @override
  State<WeaponButton> createState() => _WeaponButtonState();
}

class _WeaponButtonState extends State<WeaponButton>
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
        backgroundColor: Colors.black,
        shape: const CircleBorder(),
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
          padding: const EdgeInsets.all(16),
          child: Image(
            image: AssetImage(widget.weapon.img),
            color: Colors.white,
            height: 30,
            width: 30,
          ),
        ),
      ),
    );
  }
}
