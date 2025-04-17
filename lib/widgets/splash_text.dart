import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashText extends StatelessWidget {
  const SplashText({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text("SNACK", 
      style: GoogleFonts.roboto(
        fontSize: 122, 
        height: 0.8,
        fontWeight: FontWeight.w600,
        foreground: Paint()
          ..style = PaintingStyle.stroke
          ..strokeWidth = 2.54
          ..color = Colors.white.withAlpha(50)
        ),),
    );
  }
}