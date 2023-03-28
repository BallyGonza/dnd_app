import 'package:flutter/material.dart';

class NoNotes extends StatelessWidget {
  const NoNotes({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
    );
  }
}