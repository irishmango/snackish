import 'package:flutter/material.dart';
import 'package:snackish/models/menu.dart';
import 'package:snackish/card_widgets/frosted_color_card.dart';

class RecommendCard extends StatelessWidget {
  final Menu recommendationMenu;
  final VoidCallback onTap;

  const RecommendCard({
    required this.recommendationMenu,
    required this.onTap,
    super.key});


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:
        onTap,
      
      child: Stack(
        children: [
          FrostedCardColor(width: 210, height: 288,),
      
          SizedBox(
            width: 210,
            height: 288,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 10,
              children: [
      
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Center(
                    child: Image.asset(recommendationMenu.imagePath, 
                    width: 170,),
                  ),
                ),
      
                Padding(
                  padding: const EdgeInsets.only(left: 17.5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(recommendationMenu.title,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        height: 1.54,
                        letterSpacing: -0.5,
                        color: Colors.white
                      ),
                      ),
                      Text(recommendationMenu.subtitle,
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        height: 1.33,
                        color: Color.fromRGBO(235, 235, 245, .6)
                      ),
                      )
                    ],
                  ),
                ),
      
                Padding(
                  padding: const EdgeInsets.only(left: 17.5, right: 17.5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                      recommendationMenu.prices[PortionSize.small] != null
                        ? '€${recommendationMenu.prices[PortionSize.small]!.toStringAsFixed(2)}'
                        : 'Price N/A',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        height: 1.54,
                        color: Colors.white,
                      ),
                    ),
                      Row(
                        children: [
                          Icon(Icons.favorite_border_outlined, color: Color.fromRGBO(235, 235, 245, 0.6)),
                          Text(recommendationMenu.likes,
                          style: TextStyle(
                            color: Color.fromRGBO(235, 235, 245, 0.6),
                            fontSize: 13,
                            fontWeight: FontWeight.normal
                          ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
