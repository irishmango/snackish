import 'package:flutter/material.dart';
import 'package:snackish/gradient_scaffold.dart';
import 'package:snackish/home.dart';
import 'package:snackish/menu_item_card.dart';
import 'package:snackish/splash_1.dart';
import 'package:snackish/splash_screen.dart';
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
      home: 
      // PinkBackgroundBig()
      // SplashScreen()
      // GradientScaffold(child: Center(child: FoodDescriptionCard())),
      // GradientScaffold(child: Center(child: ClearCard())),
      // Home()
      SplashScreen()
      // RecommendCard()
      // Sandbox()
      // MenuItemCard()
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
