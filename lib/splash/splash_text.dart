import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marquee/marquee.dart';


class SplashText extends StatelessWidget {
  final int strokeOpacity; 
  final double fontsize;
  final TextDirection direction;
  final double velocity;
  final bool enabled;

  const SplashText({
    super.key,
    this.fontsize = 138,
    this.strokeOpacity = 50, 
    this.velocity = 30.0,
    this.direction = TextDirection.ltr,
    this.enabled = true
  });

  @override
  Widget build(BuildContext context) {
    if (!enabled) {
      return SizedBox(
        height: fontsize * 0.8,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: NeverScrollableScrollPhysics(),
          child: Text(
            "SNACK SNACK",
            style: GoogleFonts.roboto(
              letterSpacing: -2,
              wordSpacing: -12,
              fontSize: fontsize,
              height: 0.8,
              fontWeight: FontWeight.w600,
              foreground: Paint()
                ..style = PaintingStyle.stroke
                ..strokeWidth = 2.54
                ..color = Colors.white.withAlpha(strokeOpacity),
                
            ),
          ),
        ),
      );
    }

    return SizedBox(
      height: fontsize,
      child: Marquee(
        // text attributes
        text: "SNACK SNACK SNACK SNACK SNACK SNACK SNACK SNACK ",
        style: GoogleFonts.roboto(
          letterSpacing: -2,
          wordSpacing: -12,
          fontSize: fontsize,
          height: 0.8,
          fontWeight: FontWeight.w600,
          foreground: Paint()
            ..style = PaintingStyle.stroke
            ..strokeWidth = 2.54
            ..color = Colors.white.withAlpha(strokeOpacity),
        ),
        // animation attributes
        scrollAxis: Axis.horizontal,
        textDirection: direction,
        crossAxisAlignment: CrossAxisAlignment.start,
        blankSpace: 20.0,
        velocity: velocity,
        pauseAfterRound: Duration(seconds: 0),
        startPadding: 20.0,
        accelerationDuration: Duration(seconds: 1),
        accelerationCurve: Curves.linear,
        decelerationDuration: Duration(milliseconds: 500),
        decelerationCurve: Curves.easeOut,
      ),
    );
  }
}