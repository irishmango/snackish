import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderButton extends StatelessWidget {
  const OrderButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 202,
      height: 48,
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
    
      ),
      child: TextButton(
        onPressed: () {}, 
        child: Text("Order Now",
          style: GoogleFonts.inter(
            textStyle: TextStyle(
              color: Colors.white, 
              fontSize: 17, 
              height: 1.77, 
              fontWeight: FontWeight.w600)
              ),
              textAlign: TextAlign.center,
        
        )),
    );
  }
}