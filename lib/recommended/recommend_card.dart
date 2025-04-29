import 'package:flutter/material.dart';
import 'package:snackish/models/menu.dart';
import 'package:snackish/card_widgets/frosted_color_card.dart';

class RecommendCard extends StatefulWidget {
  final Menu recommendationMenu;
  final VoidCallback onTap;

  const RecommendCard({
    required this.recommendationMenu,
    required this.onTap,
    super.key});

  @override
  State<RecommendCard> createState() => _RecommendCardState();
}

class _RecommendCardState extends State<RecommendCard> {
  bool isFav = false;
  late int favorited;
  late int originalFavorited;

  @override
  void initState() {
    super.initState();
    favorited = widget.recommendationMenu.likes;
    originalFavorited = widget.recommendationMenu.likes;
  }

  @override
  Widget build(BuildContext context) {

  void toggleFav() {
    setState(() {
      isFav = !isFav;
      favorited = isFav ? originalFavorited + 1 : originalFavorited;
    });
  }

    return GestureDetector(
      onTap:
        widget.onTap,
      
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
                    child: Image.asset(widget.recommendationMenu.imagePath, 
                    width: 170,),
                  ),
                ),
      
                Padding(
                  padding: const EdgeInsets.only(left: 17.5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.recommendationMenu.title,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        height: 1.54,
                        letterSpacing: -0.5,
                        color: Colors.white
                      ),
                      ),
                      Text(widget.recommendationMenu.subtitle,
                      style: TextStyle(
                        fontSize: 14,
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
                      widget.recommendationMenu.prices[PortionSize.small] != null
                        ? '₳${widget.recommendationMenu.prices[PortionSize.small]!.toStringAsFixed(2)}'
                        : 'Price N/A',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        height: 1.54,
                        color: Colors.white,
                      ),
                    ),
                      Row(
                        spacing: 4,
                        children: [
                          GestureDetector(
                            onTap: toggleFav,
                            child: isFav
                                ? Icon(
                                    Icons.favorite_rounded,
                                    color: Color.fromRGBO(217, 66, 171, 1),
                                    size: 18,
                                  )
                                : Icon(
                                    Icons.favorite_border_rounded,
                                    color: Color.fromRGBO(235, 235, 240, 0.6),
                                    size: 18,
                                  ),
                          ),
                          SizedBox(
                            width: 26,
                            child: Text("$favorited",
                            style: TextStyle(
                              color: Color.fromRGBO(235, 235, 245, 0.6),
                              fontSize: 13,
                              fontWeight: FontWeight.normal
                            ),
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
