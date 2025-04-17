import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snackish/food_description_card.dart';
import 'package:snackish/gradient_scaffold.dart';
import 'package:snackish/home.dart';
import 'package:snackish/pink_background.dart';
import 'package:snackish/splash_screen.dart';
import 'package:snackish/widgets/splash_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: 
      // PinkBackground()
      SplashScreen()
      // GradientScaffold(child: Center(child: FoodDescriptionCard())),
    );
  }
}

class Sandbox extends StatelessWidget {
  const Sandbox({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientScaffold(
      child: Center(
        child: Container(
        padding: const EdgeInsets.all(30),
        decoration: ShapeDecoration(
          color: Colors.white.withAlpha(5),
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 1,
              color: Colors.white.withAlpha(7),
            ),
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 30,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 6,
              children: [
                SizedBox(
                  width: 280,
                  child: Text(
                    'Feeling Snackish Today?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w900,
                      height: 1.27,
                      letterSpacing: 0.35,
                      shadows: [Shadow(offset: Offset(0, 10), blurRadius: 60, color: Color(0xFF000000).withAlpha(5))],
                    ),
                  ),
                ),
                SizedBox(
                  width: 280,
                  child: Text(
                    'Explore Angi’s most popular snack selection and get instantly happy.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color(0x99EBEBF5),
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      height: 1.38,
                      letterSpacing: -0.08,
                      shadows: [Shadow(offset: Offset(0, 10), blurRadius: 60, color: Color(0xFF000000).withAlpha(5))],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: 202,
              height: 48,
              padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 14),
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.50, -0.23),
                  end: Alignment(0.50, 1.00),
                  colors: [const Color(0xFFFDC7F0), const Color(0x00ED92D7)],
                ),
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x7FEA71C5),
                    blurRadius: 30,
                    offset: Offset(0, 10),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                spacing: 10,
                children: [
                  SizedBox(
                    width: 121,
                    child: Text(
                      'Order Now',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        height: 1.35,
                        shadows: [Shadow(offset: Offset(0, 10), blurRadius: 20, color: Color.fromARGB(255, 242, 17, 212).withAlpha(5))],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
  ),
)
      )
      );
  }
}
