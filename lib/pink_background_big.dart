import 'package:flutter/material.dart';
import 'package:snackish/gradient_scaffold.dart';

class PinkBackgroundBig extends StatelessWidget {
  const PinkBackgroundBig({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientScaffold(
      child: Stack(
        children: [
          Transform.translate(
            offset: const Offset(110, -280), // adjust this value to fine-tune the curve position
            child: Transform.scale(
              scale: 2.4,
              child: Image.asset(
                'assets/hintergründe/background_pink_big.png',
                width: 1800,
                
              ),
            ),
          ),
        ],
      )
    );
  }
}