import 'package:flutter/material.dart';
import 'package:snackish/src/background/gradient_scaffold.dart';

class PinkBackgroundBig extends StatelessWidget {
  const PinkBackgroundBig({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientScaffold(
      child: Stack(
        children: [
          Transform.translate(
            offset: const Offset(110, -280),
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