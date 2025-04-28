import 'package:flutter/material.dart';
import 'package:snackish/models/menu.dart';
import 'package:snackish/theme.dart';

class PortionSizeSelector extends StatelessWidget {
  final PortionSize selectedSize;
  final Function(PortionSize) onSizeSelected;

  const PortionSizeSelector({
    required this.selectedSize,
    required this.onSizeSelected,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: 30,
      decoration: BoxDecoration(
        color: Color.fromRGBO(118, 118, 128, .24),
        borderRadius: BorderRadius.circular(9),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [

          _buildSizeButton(PortionSize.small, "Small"),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 9),
            child: VerticalDivider(width: 1, thickness: 1),
          ),

          _buildSizeButton(PortionSize.medium, "Medium"),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 9),
            child: VerticalDivider(width: 1, thickness: 1),
          ),

          _buildSizeButton(PortionSize.large, "Large"),
        ],
      ),
    );
  }






  Widget _buildSizeButton(PortionSize size, String label) {
    final isSelected = selectedSize == size;
    return GestureDetector(
      onTap: () => onSizeSelected(size),
      child: Container(
        height: 25,
        width: 50,
        decoration: BoxDecoration(
          color: isSelected ? const Color.fromRGBO(99, 99, 102, 1) : Colors.transparent,
          borderRadius: BorderRadius.circular(7),
        ),
        child: Center(
          child: BodySmallText(
            label, 
            color: isSelected
                  ? Color.fromRGBO(235, 235, 245, 1)
                  : Color.fromRGBO(235, 235, 235, .6),)
        ),
      ),
    );
  }
}