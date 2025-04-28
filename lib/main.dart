import 'package:flutter/material.dart';
import 'package:snackish/src/background/gradient_scaffold.dart';
import 'package:snackish/splash/splash_screen.dart';
import 'package:snackish/theme.dart';
import 'package:flutter/rendering.dart';

void main() {
  debugPaintSizeEnabled = false;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: primaryTheme,
      home: SplashScreen()
    );
  }
}

class Sandbox extends StatelessWidget {
  const Sandbox({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientScaffold(
      child: Center(
        child: null
      )
      );
  }
}
