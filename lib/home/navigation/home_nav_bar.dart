import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snackish/categories_button.dart';
import 'package:snackish/home/navigation/nav_button.dart';

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
          padding: const EdgeInsets.only(left: 20, top: 85),
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
        SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              spacing: 8,
              children: [
                CategoriesButton(),
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
