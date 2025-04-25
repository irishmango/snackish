import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderButton extends StatelessWidget {
  final double width;
  final double height;
  final String title;
  VoidCallback? action;

  OrderButton({
    required this.action,
    required this.width,
    required this.title,
    this.height = 48,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Color.fromRGBO(217, 55, 168, 1)
        ),
        gradient: RadialGradient(
          colors: [
            Color.fromRGBO(246, 158, 163, 1),
            Color.fromRGBO(233, 112, 196, 1)
          ],
          center: Alignment(0.8, 0.7),
          radius: 3.2
          ),
          boxShadow: [
  BoxShadow(
    color: Color.fromRGBO(234, 113, 197, 0.5), 
    offset: Offset(0, 10),
    blurRadius: 30,
    spreadRadius: 0,
  ),
],
    
      ),
      child: TextButton(
        onPressed: action, 
        child: Center(
          child: Text(title,
            style: GoogleFonts.inter(
              textStyle: TextStyle(
                color: Colors.white, 
                fontSize: 17, 
                height: 1.77, 
                fontWeight: FontWeight.w600)
                ),
                textAlign: TextAlign.center,
          
          ),
        )),
    );
  }
}