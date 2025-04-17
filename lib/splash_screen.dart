import 'package:flutter/material.dart';
import 'package:snackish/gradient_scaffold.dart';
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
            // Positioned(
            //   top: 80,
            //   child: Image.asset('assets/hintergründe/pink_bg.png')),
            Padding(
              padding: const EdgeInsets.only(top: 87),
              child: SplashText(),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/grafiken/cupcake_chick.png'),
              ],
            ),
            Positioned(
              bottom: 280,
              right: 0,
              left: 0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SplashText()
                      
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 110,
              right: 0,
              left: 0,
              child: Center(child: SplashCard()))
          ],
        ),
      ));
  }
}