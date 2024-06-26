import 'package:dnd_app/data/data.dart';
import 'package:flutter/material.dart';

class WeaponThrowRow extends StatelessWidget {
  const WeaponThrowRow({
    required this.weapon,
    required this.title,
    super.key,
  });

  final WeaponModel weapon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (weapon.quantityOfDamageDices > 1 && title == 'DAMAGE')
          Text(
            '${weapon.quantityOfDamageDices}d',
            style: const TextStyle(fontSize: 20),
          )
        else
          const SizedBox(width: 25),
        Image.asset(
          title == 'TO HIT' ? weapon.checkDice.img : weapon.damageDice.img,
          width: 20,
        ),
        const SizedBox(width: 5),
        const Text(
          '+',
          style: TextStyle(fontSize: 15),
        ),
        const SizedBox(width: 5),
        Text(
          title == 'TO HIT' ? '${weapon.range}' : '${weapon.damage}',
          style: const TextStyle(fontSize: 20),
        ),
      ],
    );
  }
}
