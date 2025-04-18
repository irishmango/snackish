import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snackish/gradient_scaffold.dart';
import 'package:snackish/home_nav_bar.dart';
import 'package:snackish/pink_background.dart';
import 'package:snackish/widgets/recommend_card.dart';
import 'package:snackish/widgets/home_main_card.dart';
import 'package:snackish/widgets/order_button.dart';
import 'package:snackish/widgets/recommended_list.dart';
import 'package:snackish/widgets/small_order_button.dart';
import 'package:snackish/widgets/splash_text.dart';
import 'dart:ui';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientScaffold(
      child: Stack(
        children: [
          const PinkBackground(),
          Positioned(
            left: -10,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.only(top: 40),
              child: const SplashText(strokeOpacity: 15,),
            ),
          ),
            Positioned(
            left: -10,
            right: 0,
            bottom: 350,
            child: Padding(
              padding: const EdgeInsets.only(top: 87),
              child: const SplashText(strokeOpacity: 15,),
            ),
          ),
          Column(
            children: [
              HomeNavBar(),
              SizedBox(height: 20),
              SizedBox(
                height: 300,
                child: HomeMainCard()
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: RecommendedList(),
              )
              
            ],
          )
        ],
      ));
  }
}
