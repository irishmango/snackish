import 'dart:ui';
import 'package:flutter/material.dart';

class NavButton extends StatefulWidget {
  final String name;

  const NavButton({
    required this.name,
    super.key,
  });

  @override
  State<NavButton> createState() => _NavButtonState();
}

class _NavButtonState extends State<NavButton> {
  bool buttonState = false;

  void onPressed() {
    setState(() {
      buttonState = !buttonState;
    }); 
  }
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:() {
        onPressed();
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30), 
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15), 
          child: Container(
            width: 95,
            height: 48,
            decoration: 
            buttonState 
            ? ShapeDecoration(
              color: Colors.white.withAlpha(127),
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 1,
                  color: Colors.white.withAlpha(30),
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              )
            : ShapeDecoration(
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
                child: Text(widget.name,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 13,
                      height: 1.9,
                      letterSpacing: -0.35,
                      color: 
                      buttonState 
                      ? Color.fromRGBO(48, 44, 35, 1)
                      : Color.fromRGBO(235, 235, 245, 0.6)
                    ),),
              ),
          )
        )
      ),
    );
  }
}