import 'package:dnd_app/bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WildFormHealthPoints extends StatefulWidget {
  const WildFormHealthPoints({Key? key, required this.max, required this.color})
      : super(key: key);

  final int max;
  final Color color;

  @override
  State<WildFormHealthPoints> createState() => _WildFormHealthPointsState();
}

class _WildFormHealthPointsState extends State<WildFormHealthPoints> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: Colors.white,
          width: 0.5,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            FittedBox(
              fit: BoxFit.contain,
              child: Text(
                'HIT POINTS',
                style: TextStyle(
                  fontSize: 8,
                  color: widget.color,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    context
                        .read<WildFormHealthPointsBloc>()
                        .add(const WildFormHealthPointsEvent.subtract());
                  },
                  child: BlocBuilder<WildFormHealthPointsBloc,
                      WildFormHealthPointsState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                        orElse: () => const CircularProgressIndicator(),
                        loaded: (healthPoints) => Text(
                          '$healthPoints',
                          style: TextStyle(
                            fontSize: 20,
                            color: widget.color,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Text(
                  '/',
                  style: TextStyle(
                    fontSize: 20,
                    color: widget.color,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    context
                        .read<WildFormHealthPointsBloc>()
                        .add(const WildFormHealthPointsEvent.add());
                  },
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: Text(
                      '${widget.max}',
                      style: TextStyle(
                        fontSize: 20,
                        color: widget.color,
                      ),
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
