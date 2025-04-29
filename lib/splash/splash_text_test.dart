import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marquee/marquee.dart';


class SplashTextTest extends StatelessWidget {
  final int strokeOpacity; 
  final double fontsize;
  final TextDirection direction;
  final double velocity;
  final bool enabled;

  const SplashTextTest({
    super.key,
    this.fontsize = 138,
    this.strokeOpacity = 50, 
    this.velocity = 30.0,
    this.direction = TextDirection.ltr,
    this.enabled = true
  });

  @override
  Widget build(BuildContext context) {
      return SizedBox(
        height: fontsize * 0.8,
        child: SingleChildScrollView(
  scrollDirection: Axis.horizontal,
  child: Stack(
    children: <Widget>[
      Text(
        'EXAMPLE EXAMPLE',
        style: TextStyle(
          letterSpacing: -2,
          wordSpacing: -12,
          fontSize: fontsize,
          foreground: Paint()
            ..style = PaintingStyle.stroke
            ..strokeWidth = 7
            ..color = Colors.blue[700]!,
        ),
      ),
      Text(
        'EXAMPLE EXAMPLE',
        style: TextStyle(
          letterSpacing: -2,
          wordSpacing: -12,
          fontSize: fontsize,
          color: Colors.grey[300],
        ),
      ),
    ],
  ),
),

      );
    }

  }