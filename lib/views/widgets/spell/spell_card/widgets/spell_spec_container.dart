import 'package:flutter/material.dart';

class SpellSpecContainer extends StatelessWidget {
  const SpellSpecContainer({
    Key? key,
    required this.spec,
    required this.specDetail,
  }) : super(key: key);

  final String spec;
  final String specDetail;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(2.0),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(5.0),
            ),
          ),
          width: MediaQuery.of(context).size.width * 0.438,
          height: 42,
          child: Column(
            children: [
              Text(
                spec,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.purple[100],
                ),
              ),
              const SizedBox(width: 8),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 2.0),
                  child: Text(
                    specDetail,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}