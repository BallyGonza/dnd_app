import 'package:dnd_app/data/data.dart';
import 'package:dnd_app/views/views.dart';
import 'package:dnd_app/views/widgets/cards/title_and_child.dart';
import 'package:flutter/material.dart';

class PetCard extends StatefulWidget {
  final List<Pet> pet;
  const PetCard({Key? key, required this.pet}) : super(key: key);

  @override
  State<PetCard> createState() => _PetCardState();
}

class _PetCardState extends State<PetCard> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
          padding: const EdgeInsets.only(left: 16.0, bottom: 8.0, right: 16.0),
          child: Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
              side: BorderSide(
                color: Theme.of(context).dividerColor,
                width: 1,
              ),
            ),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(widget.pet[0].img),
                      fit: BoxFit.contain,
                      alignment: Alignment.centerRight,
                      opacity: 0.5,
                    ),
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        title: Text(widget.pet[0].name,
                            style: const TextStyle(fontSize: 20)),
                        subtitle: Text(
                          widget.pet[0].race,
                          style: const TextStyle(color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ArmorClass(
                              armor: widget.pet[0].armor,
                              color: Colors.black,
                            ),
                            PetHealthPoints(
                              max: widget.pet[0].healthPoints.max,
                              color: Colors.black,
                            ),
                            Speed(
                              speed: widget.pet[0].speed,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                PetAbilitiesList(abilities: widget.pet[0].abilities),
                PetSavingThrowList(savingThrows: widget.pet[0].savingThrows),
                SkillsList(skills: widget.pet[0].allSkills),
                WeaponsList(weapons: widget.pet[0].weapons),
                TraitsList(traits: widget.pet[0].traits),
              ],
            ),
          )),
    );
  }
}