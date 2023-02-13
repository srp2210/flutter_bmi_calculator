// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';
import '../widgets/bottom_button.dart';
import '../widgets/resuable_container.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({
    super.key,
    required this.interpretation, required this.bmiResult, required this.resultText,
  });

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF101639),
          elevation: 0,
          title: Text(
            'BMI CALCULATOR',
            style: GoogleFonts.getFont('Lato'),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Expanded(
              flex: 0,
                child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: GoogleFonts.lato(
                  fontSize: 35.0,
                  color: Colors.white,
                ),
              ),
            )),
            Expanded(
              flex: 5,
              child: ReusableContainer(
                color: kactiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      resultText.toUpperCase(),
                      style: kresultTextStyle,
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      bmiResult,
                      style: kbmiTextStyle,
                    ),
                    SizedBox(height: 25.0),
                    Text(
                      interpretation,
                      textAlign: TextAlign.center,
                      style: kbodyTextStyle,
                    ),
                  ],
                ),
              ),
            ),
            BottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              buttonTitle: 'RE-CALCULATE',
            ),
          ],
        ));
  }
}
