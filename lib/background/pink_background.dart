import 'package:flutter/material.dart';

class PinkBackground extends StatelessWidget {
  const PinkBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Image.asset(
        'assets/hintergründe/pink_bg.png',
        width: 500, 
        fit: BoxFit.cover,
      ),
    );
  }
}