import 'package:dnd_app/data/data.dart';
import 'package:dnd_app/views/widgets/spell/spell_card/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SpellSpecs extends StatelessWidget {
  const SpellSpecs({required this.spell, super.key});

  final SpellModel spell;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              SpellSpecContainer(
                spec: 'CASTING TIME',
                specDetail: spell.castTime,
              ),
              const SizedBox(height: 4),
              SpellSpecContainer(
                spec: 'COMPONENTS',
                specDetail: spell.comp,
              ),
            ],
          ),
          const SizedBox(width: 4),
          Column(
            children: [
              SpellSpecContainer(
                spec: 'RANGE',
                specDetail: spell.range,
              ),
              const SizedBox(height: 4),
              SpellSpecContainer(
                spec: 'DURATION',
                specDetail: spell.duration,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
