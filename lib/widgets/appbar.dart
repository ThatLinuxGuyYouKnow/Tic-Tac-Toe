import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TicAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TicAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      toolbarHeight: 80,
      centerTitle: true,
      title: Text(
        'TIC- TAC - TOE',
        style: GoogleFonts.bungeeSpice(fontSize: 70),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(80);
}
