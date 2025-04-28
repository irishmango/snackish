import 'package:flutter/material.dart';

class Reviews extends StatelessWidget {
  const Reviews({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8,
      children: [
        Text("Reviews",
        style: TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.w600,
          letterSpacing: -0.08,
          height: 1.6,
          color: Color.fromRGBO(235, 235, 245, .6)
        ),
        ),
        Row(
          spacing: 16,
          children: [
            Row(
              spacing: 3,
              children: [
                Image.asset('assets/icons/star_filled.png', height: 12,),
                Image.asset('assets/icons/star_filled.png', height: 12),
                Image.asset('assets/icons/star_filled.png', height: 12),
                Image.asset('assets/icons/star_filled.png', height: 12),
                Image.asset('assets/icons/star_outlined.png', height: 12),
              ],
            ),
            Text("4.0",
            style: TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w800,
            letterSpacing: -0.08,
            height: 1.6,
            color: Color.fromRGBO(235, 235, 245, .6)
          ),)
          ],
        )
                                  
      ],
    );
  }
}