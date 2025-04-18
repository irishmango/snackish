import 'package:flutter/material.dart';
import 'package:snackish/gradient_scaffold.dart';
import 'package:snackish/pink_background.dart';
import 'package:snackish/widgets/splash_card.dart';
import 'package:snackish/widgets/splash_text.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

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
              bottom: 280,
              left: -10,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  SplashText(),
                ],
              ),
            ),
            const Positioned(
              bottom: 100,
              left: 0,
              right: 0,
              child: Center(
                child: SplashCard(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}