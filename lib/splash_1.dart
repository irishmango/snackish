import 'package:flutter/material.dart';
import 'package:snackish/gradient_scaffold.dart';
import 'package:snackish/widgets/splash_text.dart';

class Splash1 extends StatelessWidget {
  const Splash1({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientScaffold(
      child: Padding(
        padding: const EdgeInsets.only(top: 87),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SplashText(),
              SplashText(),
              SplashText(),
              SplashText(),
              SplashText(),
              SplashText(),
              SplashText(),
              SplashText(),
              SplashText(),
              
    

              
            ],
          ),
        ),
      ));
  }
}