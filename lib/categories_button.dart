import 'dart:ui';
import 'package:flutter/material.dart';

class CategoriesButton extends StatelessWidget {
  const CategoriesButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30), 
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15), 
        child: Container(
      width: 150,
      height: 48,
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
              fontSize: 13,
              height: 1.9,
              letterSpacing: -0.35,
              color: Color.fromRGBO(235, 235, 245, 0.6)
            ),),
            Icon(Icons.keyboard_arrow_down, color: Color.fromRGBO(235, 235, 245, 0.6))
          ],
        ),
      )
    )
    );
  }
}
