import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tic_tac_toe/widgets/appbar.dart';

class StartScreen extends StatelessWidget {
  StartScreen({super.key});
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const TicAppBar(),
        backgroundColor: Colors.white,
        body: Center(
            child: Column(children: [
          SizedBox(
            height: 70,
          ),
          Text(
            'Start Game',
            style: GoogleFonts.lilitaOne(fontSize: 60),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: Image(
              height: 400,
              width: 400,
              image: AssetImage('assets/images/tictac2.png'),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(20),
            ),
            height: 70,
            width: 150,
            child: Center(
              child: Text(
                'START',
                style: GoogleFonts.bungeeSpice(fontSize: 70),
              ),
            ),
          )
        ])));
  }
}
