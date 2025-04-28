import 'package:flutter/material.dart';

class Ingredients extends StatelessWidget {
  const Ingredients({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8,
      children: [
        Text("Ingredients",
        style: TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.w600,
          letterSpacing: -0.08,
          height: 1.6,
          color: Color.fromRGBO(235, 235, 245, .6)
        ),
        ),
        Row(
          spacing: 5,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset('assets/icons/plant_icon.png', height: 23,),
            Image.asset('assets/icons/no_sugar_icon.png', height: 23,),
            Image.asset('assets/icons/low_fat_icon.png', height: 23,),
            Image.asset('assets/icons/kcal_icon.png', height: 23,)
          ],
        )
      ],
    );
  }
}
