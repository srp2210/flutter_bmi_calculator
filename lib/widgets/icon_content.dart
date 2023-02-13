import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IconContent extends StatelessWidget {
  const IconContent({
    Key? key,
    required this.text,  this.icon,
  }) : super(key: key);

  final IconData? icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
         Icon(
          icon,
          color: Colors.white,
          size: 80.0,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          text,
          style: GoogleFonts.lato(
            fontSize: 18.0,
            color: const Color(0xFF8D8E98),
          ),
        )
      ],
    );
  }
}
