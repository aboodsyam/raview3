import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class widget_1 extends StatelessWidget {
  const widget_1({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('images/$image.png'),
          SizedBox(height: 25),
          Text(
            title,
            style: GoogleFonts.nunito(
                fontWeight: FontWeight.bold, fontSize: 22, height: 2),
          ),
          SizedBox(height: 15),
          Text(
            'nd its speakers are called Anglophones. English is named after the Angles, one of the ancient Germanic peoples that migrated to the island of Great Britain,',
            style: GoogleFonts.nunito(
                fontWeight: FontWeight.w300, fontSize: 16, height: 1),
          ),
        ],
      ),
    );
  }
}
