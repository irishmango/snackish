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
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: const [-1, 0.5, 1.0],
              colors: const [
                Color.fromRGBO(255, 255, 255, 0.1), 
                Color.fromRGBO(144, 140, 245, 0.75), 
                Color.fromRGBO(140, 91, 234, 0.74), 
              ],
            ),
            border: Border.all(
              width: 1,
              color: Colors.white.withAlpha(76), 
            ),
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}