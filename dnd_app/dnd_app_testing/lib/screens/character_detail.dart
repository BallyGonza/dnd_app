// ignore_for_file: must_be_immutable

import 'package:dnd_app/components/cards/backstory_card.dart';
import 'package:dnd_app/components/character/lists/traits_list.dart';
import 'package:dnd_app/models/character/character.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/cards/character_card.dart';
import '../components/character/lists/abilities_and_savingthrows_list.dart';
import '../components/character/lists/backgrounds_list.dart';
import '../components/character/lists/pets_list.dart';
import '../components/character/lists/skills_list.dart';
import '../components/character/lists/spells_list.dart';
import '../components/character/lists/weapons_list.dart';
import '../components/dialog/roll-any-dice_dialog.dart';
import '../models/dice.dart';
import '../services/my_flutter_app_icons.dart';

class CharacterDetail extends StatefulWidget {
  Character character;

  CharacterDetail({Key? key, required this.character}) : super(key: key);

  @override
  State<CharacterDetail> createState() => _CharacterDetailState();
}

class _CharacterDetailState extends State<CharacterDetail> {
  var isVisible = false;
  var isDialOpen = ValueNotifier<bool>(false);
  var isDialFightOpen = ValueNotifier<bool>(false);
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.robotoCondensedTextTheme(),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context),
          ),
          title: Text(
            '${widget.character.name} ${widget.character.lastName}',
            style: const TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.black,
        ),
        body: ListView(
          controller: ScrollController(),
          children: [
            CardCharacter(
              character: widget.character,
            ),
            Column(
              children: [
                _navigationButtons(),
                _stackedWidgets(),
                const SizedBox(height: 80),
              ],
            ),
          ],
        ),
        floatingActionButton: SpeedDial(
          overlayOpacity: 0,
          backgroundColor: Colors.black,
          activeIcon: Icons.close,
          spacing: 3,
          openCloseDial: isDialOpen,
          children: [
            SpeedDialChild(
              child: const Icon(MyFlutterApp.d20),
              backgroundColor: Colors.white,
              onTap: () {
                setState(() {
                  isDialOpen.value = false;
                  showDialog(
                      context: context,
                      builder: (context) {
                        return RollDiceDialog(dice: d20);
                      });
                });
              },
            ),
            SpeedDialChild(
              child: const Icon(MyFlutterApp.d12),
              backgroundColor: Colors.white,
              onTap: () {
                isDialOpen.value = false;
                showDialog(
                    context: context,
                    builder: (context) {
                      return RollDiceDialog(dice: d12);
                    });
              },
            ),
            SpeedDialChild(
              child: const Icon(MyFlutterApp.d10),
              backgroundColor: Colors.white,
              onTap: () {
                isDialOpen.value = false;
                showDialog(
                    context: context,
                    builder: (context) {
                      return RollDiceDialog(dice: d10);
                    });
              },
            ),
            SpeedDialChild(
              child: const Icon(MyFlutterApp.d8),
              backgroundColor: Colors.white,
              onTap: () {
                isDialOpen.value = false;
                showDialog(
                    context: context,
                    builder: (context) {
                      return RollDiceDialog(dice: d8);
                    });
              },
            ),
            SpeedDialChild(
              child: const Icon(MyFlutterApp.d6),
              backgroundColor: Colors.white,
              onTap: () {
                isDialOpen.value = false;
                showDialog(
                    context: context,
                    builder: (context) {
                      return RollDiceDialog(dice: d6);
                    });
              },
            ),
            SpeedDialChild(
              child: const Icon(MyFlutterApp.d4),
              backgroundColor: Colors.white,
              onTap: () {
                isDialOpen.value = false;
                showDialog(
                    context: context,
                    builder: (context) {
                      return RollDiceDialog(dice: d4);
                    });
              },
            ),
          ],
          child: const Icon(MyFlutterApp.d20),
        ),
      ),
    );
  }

  Widget _stackedWidgets() {
    return IndexedStack(
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
          child: ListAbilities(
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
          child: ListSkills(
            skills1: widget.character.skills1,
            skills2: widget.character.skills2,
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
          child: ListWeapons(
            character: widget.character,
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
          child: ListSpells(
            character: widget.character,
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
          child: ListTraits(
            character: widget.character,
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
          child: ListBackgrounds(
            backgrounds: widget.character.background,
            character: widget.character,
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
            character: widget.character,
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
          child: PetsList(
            character: widget.character,
          ),
        ),
      ],
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
          widget.character.pets.isNotEmpty ? _button('PETS', 7) : Container(),
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
            // if selected, change the color of the text
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
