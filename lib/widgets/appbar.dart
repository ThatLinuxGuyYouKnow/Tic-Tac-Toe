import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TicAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TicAppBar({super.key});

  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(
        'TIC- TAC - TOE',
        style: GoogleFonts.bungeeSpice(fontSize: 30),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(20);
}
