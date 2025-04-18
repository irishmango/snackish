import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snackish/nav_button.dart';
import 'package:snackish/widgets/home_main_card.dart';

class HomeNavBar extends StatelessWidget {
  const HomeNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 72),
          child: SizedBox(
            width: 280,
            child: Text("Choose Your Favorite Snack", 
            style: GoogleFonts.inter(
              textStyle: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w900,
                fontSize: 22,
                height: 1.27,
                letterSpacing: 0.35
              )
              ),),
          ),
        ),
        SizedBox(height: 16,),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              spacing: 8,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30), 
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15), 
                    child: Container(
                  width: 141,
                  height: 40,
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.food_bank_outlined, color: Color.fromRGBO(235, 235, 245, 0.6),),
                        Text("All categories",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                          height: 1.9,
                          letterSpacing: -0.35,
                          color: Color.fromRGBO(235, 235, 245, 0.6)
                        ),),
                        Icon(Icons.keyboard_arrow_down, color: Color.fromRGBO(235, 235, 245, 0.6))
                      ],
                    ),
                  )
                )
                ),
                NavButton(name: "Salty"),
                NavButton(name: "Sweet"),
                NavButton(name: "Drinks")
              ],
            ),
          ),
        ),
        
      ],
    );
  }
}
