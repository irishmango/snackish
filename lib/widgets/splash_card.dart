import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:ui';

import 'package:snackish/widgets/order_button.dart';
class SplashCard extends StatelessWidget {
  const SplashCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30), 
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15), 
        child: Container(
          width: 340,
          padding: const EdgeInsets.all(30),
          decoration: ShapeDecoration(
            color: Colors.white.withAlpha(1),
            shape: RoundedRectangleBorder(
              side: BorderSide(
                width: 1,
                color: Colors.white.withAlpha(30),
              ),
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            spacing: 30,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                spacing: 6,
                children: [
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text("Feeling Snackish Today?", 
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          color: Colors.white, 
                          fontSize: 22, 
                          height: 1.27, 
                          letterSpacing: 0.35, 
                          fontWeight: FontWeight.w900)
                          ),
                          textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    width: 270,
                    child: Text("Explore Angi's most popular snack selection and get instantly happy",
                      style: TextStyle(
                          color: const Color(0x99EBEBF5).withAlpha(153), 
                          fontSize: 13, 
                          height: 1.38, 
                          letterSpacing: -0.08, 
                          fontWeight: FontWeight.w400),
                          textAlign: TextAlign.center,
                          ),
                  ),
                ],
              ),
              OrderButton(width: 202, title: "Order Now",)
            ],
          ),
    )
      )
    );
  }
}
