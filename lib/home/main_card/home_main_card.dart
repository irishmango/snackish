import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:snackish/theme.dart';
import 'package:snackish/buttons/small_order_button.dart';
import 'dart:ui';

class HomeMainCard extends StatelessWidget {
  const HomeMainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 265,
      child: Stack(
        children: [
          Center(
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22),
      
                  // Card
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(32),
                    child: Stack(
                      children: [
                        BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                          child: Container(
                            width: 400,
                            height: 320,
                            color: Colors.transparent,
                          ),
                        ),
                        
                        SvgPicture.asset(
                          'assets/details/clear_card.svg',
                          width: 400,
                          height: 320,
                          fit: BoxFit.contain,
                          
                        ),
                      ],
                    ),
                  ),
                ),
      
                // Texts
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 20, 50, 20),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 64,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Angi's Yummy Burger",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 0.35,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(height: 6),
                                  SizedBox(
                                    width: 140,
                                    child: Text(
                                      "Delish vegan burger that tastes like heaven",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 0.35,
                                        color: Color.fromRGBO(217, 217, 217, 1),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 12),
                              HeadlineMediumText("€13.99")
                            ],
                          ),
      
                          // Button
                          SmallOrderButton(),
                        ],
                      ),
      
                      // Star Review
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Image.asset('assets/grafiken/star.png', height: 25,),
                                BodyMediumText("4.8", color: Color.fromRGBO(217, 217, 217, 1))
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 20,
            top: 45,
            child: Image.asset(
              'assets/grafiken/burger.png',
              width: 240,
            ),
          ),
        ],
      ),
    );
  }
}