import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
      width: 160,
      height: 45,
      decoration: ShapeDecoration(
        color: Colors.white.withAlpha(1),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            color: Colors.white.withAlpha(100),
          ),
          borderRadius: BorderRadius.circular(30),
        ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgPicture.asset("assets/grafiken/icons/Lunch.svg", height: 16, colorFilter: ColorFilter.mode(Color.fromRGBO(235, 235, 245, 0.6), BlendMode.srcIn)),
              Text("All categories",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 13,
                height: 1.9,
                letterSpacing: -0.35,
                color: Color.fromRGBO(235, 235, 245, 0.6)
              ),),
              SvgPicture.asset("assets/grafiken/icons/down_chevron.svg", height: 8, colorFilter: ColorFilter.mode(Color.fromRGBO(235, 235, 245, 0.6), BlendMode.srcIn))
            ],
          ),
        ),
      )
    )
    );
  }
}
