import 'package:flutter/material.dart';
import 'package:snackish/src/background/gradient_scaffold.dart';
import 'package:snackish/src/background/pink_background.dart';
import 'package:snackish/splash/splash_card.dart';
import 'package:snackish/splash/splash_text.dart';

class SplashScreenOld extends StatelessWidget {
  const SplashScreenOld({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientScaffold(
      child: SizedBox.expand(
        child: Stack(
          children: [
            const PinkBackground(),
            Positioned(
              left: -10,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.only(top: 87),
                child: const SplashText(),
              ),
            ),
            Positioned(
              top: 205,
              right: -90,
              child: Transform.scale(
                scale: 1.2,
                child: Image.asset(
                  'assets/grafiken/cupcake_chick.png',
                  width: 510,
                ),
              ),
            ),
            Positioned(
              bottom: 265,
              left: -10,
              right: 0,
              child: SplashText(fontsize: 115, direction: TextDirection.rtl,),
            ),
            const Positioned(
              bottom: 100,
              left: 0,
              right: 0,
              child: Center(
                child: null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}