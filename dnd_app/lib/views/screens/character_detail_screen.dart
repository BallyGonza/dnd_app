import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dnd_app/services/services.dart';
import 'package:dnd_app/logic/logic.dart';
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
      home: BlocProvider(
        create: (context) => HealthPointsBloc(
          widget.character.healthPoints,
        ),
        child: Scaffold(
          appBar: AppBar(
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
              CharacterDetailsCard(
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
      child: Icon(dice.icon),
      backgroundColor: Colors.white,
      onTap: () {
        setState(() {
          isDialOpen.value = false;
          showDialog(
              context: context,
              builder: (context) {
                return RollDiceDialog(dice: dice);
              });
        });
      },
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
          _button('LOOT', 7),
          widget.character.pets.isNotEmpty ? _button('PETS', 8) : Container(),
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