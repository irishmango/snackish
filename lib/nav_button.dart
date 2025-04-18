import 'dart:ui';
import 'package:flutter/material.dart';

class NavButton extends StatelessWidget {
  final String name;

  const NavButton({
    required this.name,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30), 
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15), 
        child: Container(
          width: 85,
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
            child: Center(
              child: Text(name,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    height: 1.9,
                    letterSpacing: -0.35,
                    color: Color.fromRGBO(235, 235, 245, 0.6)
                  ),),
            ),
        )
      )
    );
  }
}