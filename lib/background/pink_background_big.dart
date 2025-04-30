import 'package:flutter/material.dart';
import 'package:snackish/background/gradient_scaffold.dart';

class PinkBackgroundBig extends StatelessWidget {
  const PinkBackgroundBig({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientScaffold(
      child: Transform.translate(
        offset: const Offset(110, -568),
        child: Transform.scale(
          scale: 2.4,
          child: Image.asset(
            'assets/hintergründe/background_pink_big.png',
            width: 1800,
            
          ),
        ),
      )
    );
  }
}