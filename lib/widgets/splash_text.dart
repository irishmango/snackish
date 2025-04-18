import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashText extends StatelessWidget {
  final int strokeOpacity; 

  const SplashText({
    super.key,
    this.strokeOpacity = 50, 
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Text("SNACK SNACK",
        style: GoogleFonts.roboto(
          letterSpacing: 4,
          wordSpacing: -12,
          fontSize: 128, 
          height: 0.8,
          fontWeight: FontWeight.w600,
          foreground: Paint()
            ..style = PaintingStyle.stroke
            ..strokeWidth = 2.54
            ..color = Colors.white.withAlpha(strokeOpacity)
          ),),
      ),
    );
  }
}