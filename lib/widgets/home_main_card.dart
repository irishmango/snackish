import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:snackish/widgets/small_order_button.dart';
import 'dart:ui';

class HomeMainCard extends StatelessWidget {
  const HomeMainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Stack(
                    children: [
                      BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                        child: Container(
                          width: 400,
                          height: 300,
                          color: Colors.transparent,
                        ),
                      ),
                      
                      SvgPicture.asset(
                        'assets/details/clear_card.svg',
                        width: 400,
                        height: 300,
                        fit: BoxFit.contain,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 45, 40, 60),
                child: Row(
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
                              width: 130,
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
                        Text(
                          "€ 13.99",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            letterSpacing: -0.35,
                            color: Colors.white,
                          ),
                        ),
                        Spacer(),
                        SmallOrderButton(),
                      ],
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Image.asset('assets/grafiken/star.png', height: 20,),
                              Text("4.8",
                              style: TextStyle(
                                fontSize: 11,
                                letterSpacing: 0.35,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(217, 217, 217, 1)
                              ),
                              )
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
          right: 30,
          top: 65,
          child: Image.asset(
            'assets/grafiken/burger.png',
            width: 230,
          ),
        ),
      ],
    );
  }
}