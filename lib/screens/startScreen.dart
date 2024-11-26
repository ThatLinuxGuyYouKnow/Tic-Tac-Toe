import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  StartScreen({super.key});
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'Start Game',
            style: GoogleFonts.lilitaOne(fontSize: 20),
          ),
          SizedBox(height: 80),
          ElevatedButton(onPressed: null, child: Text('START'))
        ])));
  }
}
