import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SmallOrderButton extends StatelessWidget {
  final VoidCallback onPressed;

  const SmallOrderButton({
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 93,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: const Color.fromARGB(255, 181, 118, 191)
        ),
        gradient: RadialGradient(
          colors: [
            Color.fromRGBO(144, 140, 245, 1),
            Color.fromRGBO(187, 141, 225, 1)
          ],
          center: Alignment(0.8, 0.7),
          radius: 1.8
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
        onPressed: onPressed,
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          minimumSize: Size.zero,
        ),
        child: Center(
          child: Text("Add to order",
            style: GoogleFonts.inter(
              textStyle: TextStyle(
                color: Colors.white, 
                letterSpacing: -0.042,
                fontSize: 12, 
                height: 1.2, 
                fontWeight: FontWeight.w600)
                ),
                textAlign: TextAlign.center,
          
          ),
        )),
    );
  }
}