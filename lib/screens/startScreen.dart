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
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'Start Game',
            style: GoogleFonts.lilitaOne(fontSize: 60),
          ),
          Image(
            image: AssetImage('tictac.png'),
          ),
          ElevatedButton(onPressed: null, child: Text('START'))
        ])));
  }
}
