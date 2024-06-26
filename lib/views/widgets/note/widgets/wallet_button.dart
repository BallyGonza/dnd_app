import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WalletButton extends StatelessWidget {
  const WalletButton({
    required this.onPressed,
    required this.selected,
    super.key,
  });

  final VoidCallback onPressed;
  final Color selected;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: selected,
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(10),
      ),
      onPressed: onPressed,
      child: const Icon(FontAwesomeIcons.wallet, color: Colors.white),
    );
  }
}
