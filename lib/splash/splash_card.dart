import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:snackish/buttons/order_button.dart';
import 'package:snackish/theme.dart';

class SplashCard extends StatelessWidget {
  final VoidCallback onOrderNow;

  const SplashCard({super.key, required this.onOrderNow});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
        child: Container(
          width: 370,
          height: 208,
          padding: const EdgeInsets.all(25),
          decoration: ShapeDecoration(
            color: Colors.white.withAlpha(1),
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1, color: Colors.white.withAlpha(30)),
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            spacing: 30,
            children: [
              Column(
                spacing: 6,
                children: [
                  DisplayMediumText("Feeling Snackish Today?", textAlign: TextAlign.center,),
                  SizedBox(
                    width: 280,
                    child: Text("Explore Angi's most popular snack selection and get instantly happy",
                          style: TextStyle(
                          color: const Color(0x99EBEBF5),
                          fontSize: 13,
                          height: 1.38,
                          letterSpacing: -0.08,
                          ),
                          textAlign: TextAlign.center,
                          ),
                  ),
                ],
              ),
              OrderButton(
                width: 202,
                title: "Order Now",
                action: onOrderNow,
              ),
            ],
          ),
        ),
      ),
    );
  }
}