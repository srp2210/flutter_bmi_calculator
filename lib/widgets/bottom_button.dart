import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    Key? key, required this.onTap, required this.buttonTitle,
  }) : super(key: key);

  final VoidCallback onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: kbottomContHeight,
        width: double.infinity,
        color: kbottomContColor,
        margin: const EdgeInsets.only(top: 10.0),
        child: Center(
          child: Text(
            buttonTitle,
            style: GoogleFonts.lato(
              fontSize: 28.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
