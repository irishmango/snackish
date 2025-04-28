import 'dart:ui';
import 'package:flutter/material.dart';

class ClearCard extends StatelessWidget {
  final double width;
  final double height;
  
  const ClearCard({
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