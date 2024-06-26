import 'package:dnd_app/bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PetHealthPoints extends StatefulWidget {
  const PetHealthPoints({
    required this.max,
    required this.characterId,
    super.key,
  });

  final int characterId;
  final int max;

  @override
  State<PetHealthPoints> createState() => _PetHealthPointsState();
}

class _PetHealthPointsState extends State<PetHealthPoints> {
  @override
  void initState() {
    context.read<PetHPBloc>().add(PetHPEvent.init(widget.characterId));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          width: 0.5,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          children: [
            const Text(
              'HIT POINTS',
              style: TextStyle(
                fontSize: 8,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    context.read<PetHPBloc>().add(const PetHPEvent.subtract());
                  },
                  child: BlocBuilder<PetHPBloc, PetHPState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                        orElse: () => const CircularProgressIndicator(),
                        loaded: (healthPoints) => Text(
                          '$healthPoints',
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const Text(
                  '/',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    context.read<PetHPBloc>().add(const PetHPEvent.add());
                  },
                  child: Text(
                    '${widget.max}',
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
