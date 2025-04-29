import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snackish/home/menu/menu_item/ingredients.dart';
import 'package:snackish/home/menu/menu_item/menu_item_card.dart';
import 'package:snackish/home/menu/menu_item/reviews.dart';
import 'package:snackish/card_widgets/clear_card.dart';
import 'package:snackish/models/menu.dart';

class MenuItemDescription extends StatefulWidget {
  final bool isFav;
  final MenuItemCard widget;
  final PortionSize selectedSize;
  final VoidCallback onFavToggle;
  final int favorited;

  const MenuItemDescription({
    super.key,
    required this.favorited,
    required this.isFav,
    required this.widget,
    required this.selectedSize,
    required this.onFavToggle,
  });

  @override
  State<MenuItemDescription> createState() => _MenuItemDescriptionState();
}

class _MenuItemDescriptionState extends State<MenuItemDescription> {
  late int favorited;
  late int originalFavorited;

  @override
  void initState() {
    super.initState();
    favorited = widget.favorited;    
    originalFavorited = widget.favorited;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 340,
      width: 340,
      child: Stack(
        children: [
          ClearCard(
            height: 340,
            width: 340,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        widget.onFavToggle();
                        setState(() {
                          favorited = widget.isFav ? originalFavorited : originalFavorited + 1;
                        });
                      },
                      child: widget.isFav
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
                    SizedBox(width: 4,),
                    SizedBox(
                      width: 26,
                      child: Text("$favorited",
                        style: TextStyle(
                          color: Color.fromRGBO(235, 235, 240, 0.6),
                          fontSize: 13,
                          height: 1,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      widget.widget.menu.title,
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w900,
                          height: 1.75,
                        ),
                      ),
                    ),
                    SizedBox(height: 6),
                    SizedBox(
                      width: 280,
                      child: Text(
                        widget.widget.menu.description,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(235, 235, 245, 0.6),
                          height: 1.38,
                          letterSpacing: -0.08,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 16, horizontal: 16),
                      child: Text(
                        "₳${widget.widget.menu.prices[widget.selectedSize]!.toStringAsFixed(2)}",
                        style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 0.35,
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(thickness: 0.5),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Ingredients(),
                          Reviews(),
                        ],
                      ),
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