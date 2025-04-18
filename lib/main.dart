import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snackish/food_description_card.dart';
import 'package:snackish/gradient_scaffold.dart';
import 'package:snackish/home.dart';
import 'package:snackish/menu_item_card.dart';
import 'package:snackish/splash_1.dart';
import 'package:snackish/pink_background.dart';
import 'package:snackish/splash_screen.dart';
import 'package:snackish/theme.dart';
import 'package:snackish/widgets/clear_card.dart';
import 'package:snackish/widgets/frosted_color_card.dart';
import 'package:snackish/widgets/recommend_card.dart';
import 'package:snackish/widgets/recommended_list.dart';
import 'package:snackish/widgets/splash_card.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
      // PinkBackground()
      // SplashScreen()
      // GradientScaffold(child: Center(child: FoodDescriptionCard())),
      // GradientScaffold(child: Center(child: ClearCard())),
      // Home()
      // RecommendCard()
      Sandbox()
    );
  }
}

class Sandbox extends StatelessWidget {
  const Sandbox({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientScaffold(
      child: Center(
        child: MenuItemCard()
      )
      );
  }
}
