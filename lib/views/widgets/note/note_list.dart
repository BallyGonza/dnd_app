import 'package:dnd_app/blocs/blocs.dart';
import 'package:dnd_app/views/widgets/note/note_page.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dnd_app/views/views.dart';
import 'package:dnd_app/data/data.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

class NoteList extends StatefulWidget {
  const NoteList({Key? key}) : super(key: key);

  @override
  State<NoteList> createState() => _NoteListState();
}

class _NoteListState extends State<NoteList> {
  final titleController = TextEditingController();
  final contentController = TextEditingController();
  final format = DateFormat('hh:mm | MM/dd/yyyy');
  late double _opacity;

  @override
  void initState() {
    context.read<LootBloc>().add(const LootEvent.init());
    _opacity = 1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: BlocBuilder<LootBloc, LootState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () => const SizedBox(),
                initial: () => const CircularProgressIndicator(),
                loaded: (notes) => notes.isEmpty
                    ? SizedBox(
                        height: MediaQuery.of(context).size.height * 0.47,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Image(
                              image: AssetImage(
                                  'assets/images/wallpapers/treasure_no_background.png'),
                              height: 300,
                            ),
                            Text(
                              'Nothing here yet...',
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFA9A9A9),
                              ),
                            ),
                          ],
                        ),
                      )
                    : SizedBox(
                        height: MediaQuery.of(context).size.height * 0.67,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 20,
                            right: 20,
                          ),
                          child: ListView.separated(
                            padding: const EdgeInsets.only(
                              top: 0,
                            ),
                            itemCount: notes.length,
                            separatorBuilder: (context, index) =>
                                const SizedBox(
                              height: 10,
                            ),
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return Slidable(
                                key: ValueKey(notes[index]),
                                endActionPane: ActionPane(
                                  motion: const ScrollMotion(),
                                  children: [
                                    SlidableAction(
                                      padding: const EdgeInsets.all(10),
                                      borderRadius: BorderRadius.circular(10),
                                      onPressed: (context) {
                                        setState(() {
                                          context.read<LootBloc>().add(
                                                LootEvent.delete(index),
                                              );
                                        });
                                      },
                                      backgroundColor: const Color(0xFFFE4A49),
                                      foregroundColor: Colors.white,
                                      icon: Icons.delete,
                                      label: 'Delete',
                                    ),
                                  ],
                                ),
                                child: AnimatedOpacity(
                                  opacity: _opacity,
                                  duration: const Duration(milliseconds: 300),
                                  child: SizedBox(
                                    height: notes[index].content.length > 100 ||
                                            notes[index].content.contains('\n')
                                        ? 150
                                        : notes[index].content.isEmpty ||
                                                notes[index].title.isEmpty
                                            ? notes[index].content.length >
                                                        50 ||
                                                    notes[index]
                                                        .content
                                                        .contains('\n')
                                                ? 120
                                                : notes[index].content.length >
                                                            25 ||
                                                        notes[index]
                                                            .content
                                                            .contains('\n')
                                                    ? 110
                                                    : 90
                                            : 130,
                                    child: NoteListItem(
                                      title: notes[index].title,
                                      content: notes[index].content,
                                      date: notes[index].date,
                                      color: notes[index].color,
                                      index: index,
                                      onTap: () {
                                        titleController.text =
                                            notes[index].title;
                                        contentController.text =
                                            notes[index].content;
                                        Navigator.of(context).push(
                                          MaterialPageRoute(
                                            builder: (_) => BlocProvider.value(
                                              value: context.read<LootBloc>(),
                                              child: NotePage(
                                                note: notes[index],
                                                buttonText: 'Edit',
                                                onSaved:
                                                    (title, content, color) {
                                                  setState(() {
                                                    context
                                                        .read<LootBloc>()
                                                        .add(
                                                          LootEvent.edit(
                                                            index,
                                                            Note(
                                                              title: title,
                                                              content: content,
                                                              date: format.format(
                                                                  DateTime
                                                                      .now()),
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
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
              );
            },
          ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Container(
            width: 56,
            height: 45,
            margin: const EdgeInsets.only(
              left: 20,
              bottom: 20,
            ),
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
                        note: Note(
                          date: format.format(DateTime.now()),
                          color: Colors.white.value,
                          title: '',
                          content: '',
                        ),
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
              child: const FaIcon(
                FontAwesomeIcons.plus,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
