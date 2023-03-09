import 'package:dnd_app/blocs/blocs.dart';
import 'package:dnd_app/views/widgets/note/note_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dnd_app/views/views.dart';
import 'package:dnd_app/data/data.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NoteList extends StatefulWidget {
  const NoteList({Key? key}) : super(key: key);

  @override
  State<NoteList> createState() => _NoteListState();
}

class _NoteListState extends State<NoteList> {
  final titleController = TextEditingController();
  final contentController = TextEditingController();
  final format = DateFormat('hh:mm ~ MM/dd/yyyy');

  @override
  void initState() {
    context.read<LootBloc>().add(const LootEvent.init());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          child: BlocBuilder<LootBloc, LootState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () => const SizedBox(),
                initial: () => const CircularProgressIndicator(),
                loaded: (notes) => SizedBox(
                  height: MediaQuery.of(context).size.height * 0.58,
                  child: ListView.builder(
                    padding: const EdgeInsets.only(
                      bottom: 25,
                    ),
                    shrinkWrap: true,
                    itemCount: notes.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onLongPress: () {
                          setState(() {
                            context
                                .read<LootBloc>()
                                .add(LootEvent.delete(index));
                          });
                        },
                        child: NoteListItem(
                          title: notes[index].title,
                          content: notes[index].content,
                          date: notes[index].date,
                          color: notes[index].color,
                          index: index,
                          onTap: () {
                            titleController.text = notes[index].title;
                            contentController.text = notes[index].content;
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (_) => BlocProvider.value(
                                  value: context.read<LootBloc>(),
                                  child: NotePage(
                                    date: notes[index].date,
                                    valueColor: notes[index].color,
                                    title: notes[index].title,
                                    content: notes[index].content,
                                    buttonText: 'Edit',
                                    onSaved: (title, content, color) {
                                      setState(() {
                                        context.read<LootBloc>().add(
                                              LootEvent.edit(
                                                index,
                                                Note(
                                                  title: title,
                                                  content: content,
                                                  date: format
                                                      .format(DateTime.now()),
                                                  color: color,
                                                ),
                                              ),
                                            );
                                      });
                                    },
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
              );
            },
          ),
        ),
        const Spacer(),
        Align(
          alignment: Alignment.bottomLeft,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              shape: const CircleBorder(),
            ),
            onPressed: () {
              titleController.clear();
              contentController.clear();
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => BlocProvider.value(
                    value: context.read<LootBloc>(),
                    child: NotePage(
                      date: format.format(DateTime.now()),
                      valueColor: Colors.white.value,
                      title: '',
                      content: '',
                      buttonText: 'Add',
                      onSaved: (title, content, color) {
                        setState(() {
                          context.read<LootBloc>().add(
                                LootEvent.add(
                                  Note(
                                    title: title,
                                    content: content,
                                    date: format.format(DateTime.now()),
                                    color: color,
                                  ),
                                ),
                              );
                        });
                      },
                    ),
                  ),
                ),
              );
            },
            child: const Icon(Icons.add),
          ),
        ),
      ],
    );
  }
}
