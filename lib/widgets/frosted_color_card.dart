import 'dart:ui';
import 'package:flutter/material.dart';

class FrostedCardColor extends StatelessWidget {
  final double width;
  final double height;
  
  const FrostedCardColor({
    super.key, 
    this.width = 190, 
    this.height = 262,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              stops: [0.0, 0.61, 1],
              colors: [
                Color.fromRGBO(255, 255, 255, 0),
                Color.fromRGBO(144, 140, 245, 1),
                Color.fromRGBO(140, 91, 234, 1),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            border: Border.all(
              width: 1,
              color: Colors.white.withAlpha(30),
            ),
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}