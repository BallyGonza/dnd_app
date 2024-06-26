import 'package:dnd_app/data/data.dart';
import 'package:dnd_app/views/views.dart';
import 'package:dnd_app/views/widgets/weapon/weapon_card/widgets/widgets.dart';
import 'package:flutter/material.dart';

class WeaponCard extends StatelessWidget {
  const WeaponCard({required this.weapon, super.key});
  final WeaponModel weapon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: InkWell(
        onTap: () => showDialog<RollHitDamageDiceDialog>(
          context: context,
          builder: (context) => RollHitDamageDiceDialog(
            weapon: weapon,
            dice: weapon.damageDice,
          ),
        ),
        child: Stack(
          children: [
            SizedBox(
              height: 100,
              child: Card(
                color: Colors.white,
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            weapon.name,
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          Text(
                            weapon.description,
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          WeaponThrowRow(
                            title: 'TO HIT',
                            weapon: weapon,
                          ),
                          WeaponThrowRow(
                            title: 'DAMAGE',
                            weapon: weapon,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 10,
                right: MediaQuery.of(context).size.width * 0.6,
              ),
              height: 80,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(weapon.img),
                  fit: BoxFit.contain,
                  opacity: 0.1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
