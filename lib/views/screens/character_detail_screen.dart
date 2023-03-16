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
  int selected = 0;
  late Box<Character> box;
  final CharacterRepository characterRepository = CharacterRepository();

  @override
  void initState() {
    super.initState();
    box = Hive.box<Character>('characters_box');
    box.get(widget.character.id) ??
        box.put(widget.character.id, widget.character);
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
              box.getAt(widget.character.id)!,
            ),
          ),
          BlocProvider(
            create: (context) => LootBloc(
              characterRepository,
              widget.character.id,
            ),
          ),
          BlocProvider(
            create: (context) => WildFormHealthPointsBloc(
              box.getAt(widget.character.id)!,
            ),
          ),
          BlocProvider(
            create: (context) => PetHealthPointsBloc(
              box.getAt(widget.character.id)!,
            ),
          ),
          BlocProvider(
            create: (context) => WalletBloc(
              box.getAt(widget.character.id)!,
            ),
          ),
        ],
        child: Scaffold(
          body: Wrap(
            children: [
              CharacterDetailsCard(
                character: widget.character,
              ),
              NavBar(
                character: widget.character,
                selected: selected,
                onPressed: (index) {
                  setState(() {
                    selected = index;
                  });
                },
              ),
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
      height: MediaQuery.of(context).size.height * 0.67,
      child: IndexedStack(
        index: selected,
        children: <Widget>[
          AbilitiesList(
            abilities: widget.character.abilities,
            savingThrows: widget.character.savingThrows,
          ),
          SkillsList(
            skills: widget.character.skills,
          ),
          WeaponsList(
            weapons: widget.character.weapons,
          ),
          SpellsList(
            spells: widget.character.spells,
          ),
          TraitsList(
            traits: widget.character.traits,
          ),
          BackgroundsList(
            backgrounds: widget.character.background,
            languages: widget.character.languages,
          ),
          BackstoryCard(
            backstory: widget.character.backstory,
          ),
          const NoteList(),
          const WalletList(),
          widget.character.wildForms.isNotEmpty
              ? WildFormCard(
                  wildForms: widget.character.wildForms,
                )
              : const SizedBox.shrink(),
          widget.character.pets.isNotEmpty
              ? PetCard(
                  pets: widget.character.pets,
                )
              : const SizedBox.shrink(),
        ],
      ),
    );
  }
}
