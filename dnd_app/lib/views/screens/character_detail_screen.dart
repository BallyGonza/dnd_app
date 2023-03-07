import 'package:dnd_app/theme.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dnd_app/services/services.dart';
import 'package:dnd_app/blocs/blocs.dart';
import 'package:dnd_app/views/views.dart';
import 'package:dnd_app/data/data.dart';
import 'package:flutter/material.dart';

class CharacterDetailScreen extends StatefulWidget {
  final Character character;

  const CharacterDetailScreen({Key? key, required this.character})
      : super(key: key);

  @override
  State<CharacterDetailScreen> createState() => _CharacterDetailScreenState();
}

class _CharacterDetailScreenState extends State<CharacterDetailScreen> {
  var isDialOpen = ValueNotifier<bool>(false);
  int index = 0;
  late Box<Character> box;
  final CharacterRepository characterRepository = CharacterRepository();

  @override
  void initState() {
    super.initState();
    box = Hive.box<Character>('characters_box');
    box.get(0) ?? box.put(0, widget.character);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme,
      debugShowCheckedModeBanner: false,
      home: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => CharacterHealthPointsBloc(
              box.getAt(0)!,
            ),
          ),
          BlocProvider(
            create: (context) => LootBloc(
              characterRepository,
            ),
          ),
          widget.character.pet.isNotEmpty
              ? BlocProvider(
                  create: (context) => PetHealthPointsBloc(
                    widget.character.pet[0].healthPoints,
                  ),
                )
              : BlocProvider(
                  create: (context) => PetHealthPointsBloc(
                    HealthPoints(
                      current: 0,
                      max: 0,
                    ),
                  ),
                ),
        ],
        child: Scaffold(
          body: Column(
            children: [
              CharacterDetailsCard(
                name: widget.character.name,
                lastName: widget.character.lastName,
                img: widget.character.img,
                race: widget.character.race,
                armor: widget.character.armor,
                level: widget.character.level,
                speed: widget.character.speed,
                classes: widget.character.classes,
                initiative: widget.character.initiative,
                profileImg: widget.character.profileImg,
                healthPoints: widget.character.healthPoints,
                passivePerception: widget.character.passivePerception,
              ),
              _navigationButtons(),
              _stackedWidgets(),
            ],
          ),
          floatingActionButton: SpeedDial(
            overlayOpacity: 0,
            backgroundColor: Colors.black,
            activeIcon: Icons.close,
            spacing: 3,
            openCloseDial: isDialOpen,
            children: [
              _diceFABItem(dice: d4),
              _diceFABItem(dice: d6),
              _diceFABItem(dice: d8),
              _diceFABItem(dice: d10),
              _diceFABItem(dice: d12),
              _diceFABItem(dice: d20),
            ],
            child: const Icon(MyFlutterApp.d20),
          ),
        ),
      ),
    );
  }

  SpeedDialChild _diceFABItem({required Dice dice}) {
    return SpeedDialChild(
      child: Image.asset(dice.img, width: 30, height: 30),
      backgroundColor: Colors.white,
      onTap: () {
        isDialOpen.value = !isDialOpen.value;
        showDialog(
            context: context,
            builder: (context) {
              return RollDiceDialog(dice: dice);
            });
      },
    );
  }

  Widget _stackedWidgets() {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.74,
      child: IndexedStack(
        index: index,
        children: <Widget>[
          GestureDetector(
            onHorizontalDragEnd: (details) {
              if (details.primaryVelocity! < 0) {
                setState(() {
                  index++;
                });
              }
            },
            child: AbilitiesList(
              abilities: widget.character.abilities,
              savingThrows: widget.character.savingThrows,
            ),
          ),
          GestureDetector(
            onHorizontalDragEnd: (details) {
              if (details.primaryVelocity! < 0) {
                setState(() {
                  index++;
                });
              } else if (details.primaryVelocity! > 0) {
                setState(() {
                  index--;
                });
              }
            },
            child: Column(
              children: [
                const SizedBox(
                  height: 5,
                ),
                SkillsList(
                  skills: widget.character.skills,
                ),
              ],
            ),
          ),
          GestureDetector(
            onHorizontalDragEnd: (details) {
              if (details.primaryVelocity! < 0) {
                setState(() {
                  index++;
                });
              } else if (details.primaryVelocity! > 0) {
                setState(() {
                  index--;
                });
              }
            },
            child: WeaponsList(
              weapons: widget.character.weapons,
            ),
          ),
          GestureDetector(
            onHorizontalDragEnd: (details) {
              if (details.primaryVelocity! < 0) {
                setState(() {
                  index++;
                });
              } else if (details.primaryVelocity! > 0) {
                setState(() {
                  index--;
                });
              }
            },
            child: SpellsList(
              spells: widget.character.spells,
            ),
          ),
          GestureDetector(
            onHorizontalDragEnd: (details) {
              if (details.primaryVelocity! < 0) {
                setState(() {
                  index++;
                });
              } else if (details.primaryVelocity! > 0) {
                setState(() {
                  index--;
                });
              }
            },
            child: TraitsList(
              traits: widget.character.traits,
            ),
          ),
          GestureDetector(
            onHorizontalDragEnd: (details) {
              if (details.primaryVelocity! < 0) {
                setState(() {
                  index++;
                });
              } else if (details.primaryVelocity! > 0) {
                setState(() {
                  index--;
                });
              }
            },
            child: BackgroundsList(
              backgrounds: widget.character.background,
              languages: widget.character.languages,
            ),
          ),
          GestureDetector(
            onHorizontalDragEnd: (details) {
              if (details.primaryVelocity! < 0) {
                setState(() {
                  index++;
                });
              } else if (details.primaryVelocity! > 0) {
                setState(() {
                  index--;
                });
              }
            },
            child: BackstoryCard(
              backstory: widget.character.backstory,
            ),
          ),
          GestureDetector(
            onHorizontalDragEnd: (details) {
              if (details.primaryVelocity! < 0) {
                setState(() {
                  index++;
                });
              } else if (details.primaryVelocity! > 0) {
                setState(() {
                  index--;
                });
              }
            },
            child: const NoteList(),
          ),
          GestureDetector(
              onHorizontalDragEnd: (details) {
                if (details.primaryVelocity! < 0) {
                  setState(() {
                    index++;
                  });
                } else if (details.primaryVelocity! > 0) {
                  setState(() {
                    index--;
                  });
                }
              },
              child: widget.character.pet.isNotEmpty
                  ? PetCard(
                      pet: widget.character.pet,
                    )
                  : const SizedBox.shrink()),
        ],
      ),
    );
  }

  Widget _navigationButtons() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _button('ABILITIES', 0),
          _button('SKILLS', 1),
          _button('ATTACKS', 2),
          _button('SPELLS', 3),
          _button('TRAITS', 4),
          _button('BACKGROUND', 5),
          _button('BACKSTORY', 6),
          _button('LOOT', 7),
          widget.character.pet.isNotEmpty
              ? _button('PET', 8)
              : const SizedBox.shrink(),
        ],
      ),
    );
  }

  Widget _button(name, indexButton) {
    return TextButton(
      onPressed: () => setState(() => index = indexButton),
      child: Column(
        children: [
          Text(
            name,
            style: TextStyle(
                fontSize: 14.0,
                color: index == indexButton ? Colors.black : Colors.grey[400]),
          ),
          Container(
            height: 2.0,
            width: 20.0,
            color:
                index == indexButton ? Colors.green[200] : Colors.transparent,
          ),
        ],
      ),
    );
  }
}
