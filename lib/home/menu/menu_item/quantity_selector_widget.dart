import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class QuantitySelector extends StatelessWidget {
  final int quantity;
  final VoidCallback onDecrease;
  final VoidCallback onIncrease;

  const QuantitySelector({
    super.key,
    required this.quantity,
    required this.onDecrease,
    required this.onIncrease,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 16,
      children: [
        GestureDetector(
          onTap: onDecrease,
          child: SvgPicture.asset('assets/icons/minus_button.svg', height: 30),
        ),
        SizedBox(
          width: 22,
          child: Text(
            "$quantity",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              height: 1.35,
              color: Colors.white,
            ),
          ),
        ),
        GestureDetector(
          onTap: onIncrease,
          child: SvgPicture.asset('assets/icons/plus_button.svg', height: 30),
        ),
      ],
    );
  }
}