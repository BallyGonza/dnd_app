import 'package:dnd_app/views/views.dart';
import 'package:flutter/material.dart';

class CharacterSelectScreen extends StatelessWidget {
  const CharacterSelectScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dungeons & Dragons'),
        backgroundColor: Colors.black,
      ),
      body: const CharactersList(),
    );
  }
}
