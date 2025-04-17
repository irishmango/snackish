import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snackish/gradient_scaffold.dart';
import 'package:snackish/widgets/splash_text.dart';

class Home extends StatelessWidget {
  const Home({super.key});

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