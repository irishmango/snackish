import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snackish/widgets/clear_card.dart';
import 'package:snackish/widgets/order_button.dart';
import 'package:snackish/models/menu.dart';
import 'package:flutter_svg/flutter_svg.dart';


class MenuItemCard extends StatefulWidget {
  final Menu menu;
  final VoidCallback onClose;

  const MenuItemCard({super.key, required this.onClose, required this.menu});

  @override
  State<MenuItemCard> createState() => _MenuItemCardState();
}

class _MenuItemCardState extends State<MenuItemCard> {
  bool isFav = false;
  int quantity = 1;
  PortionSize selectedSize = PortionSize.small;
  bool showAddedMessage = false;

  @override
  Widget build(BuildContext context) {
  double screenHeight = MediaQuery.of(context).size.height;



  void toggleFav() {
    setState(() {
       isFav = !isFav;
    });
   
  }

  void increaseQuantity() {
    if (quantity < 10) {
      setState(() {
        quantity++;
      });
    }
  }

  void decreaseQuantity() {
    if (quantity > 1) {
      setState(() {
        quantity--;
      });
    }
  }

  void showAddedPopup() {
    setState(() {
      showAddedMessage = true;
    });
    Future.delayed(Duration(seconds: 2), () {
      if (mounted) {
        setState(() {
          showAddedMessage = false;
        });
      }
    });
  }
    return Stack(
      children: [
        //modular card behind
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: double.infinity,
            height: screenHeight * 7/8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment(0.0, 20.5),
                colors: [
                  Color.fromRGBO(47, 43, 34, 1),
                  Color.fromRGBO(67, 127, 151, 1),
            ]
          ),
            ),
            child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  spacing: 32,
                  children: [

                    if (showAddedMessage) 
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                        decoration: BoxDecoration(
                          color: Colors.transparent, 
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white.withAlpha(5), 
                              blurRadius: 20,
                              spreadRadius: 5,
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text(
                            "Added to Order!",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),

                    Center(
                      child: SizedBox(
                        width: 340,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 170,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(118, 118, 128, .24),
                                borderRadius: BorderRadius.circular(9),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  // Small
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selectedSize = PortionSize.small;
                                      });
                                    },
                                    child: Container(
                                      height: 25,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        color: selectedSize == PortionSize.small ? const Color.fromRGBO(99, 99, 102, 1) : Colors.transparent,
                                        borderRadius: BorderRadius.circular(7),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "Small",
                                          style: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: -0.08,
                                            height: 1.6,
                                            color: selectedSize == PortionSize.small
                                                ? Color.fromRGBO(235, 235, 245, 1)
                                                : Color.fromRGBO(235, 235, 235, .6),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),

                                  // Divider
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 9),
                                    child: VerticalDivider(width: 1, thickness: 1),
                                  ),

                                  // Medium
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selectedSize = PortionSize.medium;
                                      });
                                    },
                                    child: Container(
                                      height: 25,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        color: selectedSize == PortionSize.medium ? const Color.fromRGBO(99, 99, 102, 1)  : Colors.transparent,
                                        borderRadius: BorderRadius.circular(7),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "Medium",
                                          style: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: -0.08,
                                            height: 1.6,
                                            color: selectedSize == PortionSize.medium
                                                ? Color.fromRGBO(235, 235, 245, 1)
                                                : Color.fromRGBO(235, 235, 235, .6),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),

                                  // Divider
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 9),
                                    child: VerticalDivider(width: 1, thickness: 1),
                                  ),

                                  // Large
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selectedSize = PortionSize.large;
                                      });
                                    },
                                    child: Container(
                                      height: 25,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        color: selectedSize == PortionSize.large ? const Color.fromRGBO(99, 99, 102, 1)  : Colors.transparent,
                                        borderRadius: BorderRadius.circular(7),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "Large",
                                          style: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: -0.08,
                                            height: 1.6,
                                            color: selectedSize == PortionSize.large
                                                ? Color.fromRGBO(235, 235, 245, 1)
                                                : Color.fromRGBO(235, 235, 235, .6),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            Row(
                              spacing: 16,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    decreaseQuantity();
                                  },
                                  child: SvgPicture.asset('assets/icons/minus_button.svg', height: 30,)),
                                SizedBox(
                                  width: 22, 
                                  child: Text(
                                    "$quantity",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      height: 1.35,
                                      color: Colors.white
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    increaseQuantity();
                                  },
                                  child: SvgPicture.asset('assets/icons/plus_button.svg', height: 30,))
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    
                    Padding(
                      padding: const EdgeInsets.only(bottom: 55),
                      child: OrderButton(
                        width: 340,
                        title: "Add to order for €${(widget.menu.prices[selectedSize]! * quantity).toStringAsFixed(2)}",
                        action: () {
                          showAddedPopup(); 
                        },
                      )
                    ),
                  ],
                ),
                
                
              
          ),
        ),
        
        Image.asset(widget.menu.imagePath),

        Positioned(
                top: 120,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.only(top: 15,),
                  child: TextButton(
                    onPressed: widget.onClose, 
                    child: SvgPicture.asset('assets/icons/close_button_icon.svg', height: 30,))
                )),
        
        Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Center(
            child: SizedBox(
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
                              onTap: toggleFav,
                              child: 
                              isFav
                              ? Icon(
                                Icons.favorite_border_rounded,
                                color: Color.fromRGBO(235, 235, 240, 0.6),
                                size: 18,
                              )
                              : Icon(Icons.favorite_rounded, color: Color.fromRGBO(217, 66, 171, 1), size: 18,)
                            ),
                            Text(
                              " 200",
                              style: TextStyle(
                                color: Color.fromRGBO(235, 235, 240, 0.6),
                                fontSize: 13,
                                height: 1,
                              ),
                            ),
                          ],
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              widget.menu.title,
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
                                widget.menu.description,
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
                                "€${widget.menu.prices[selectedSize]!.toStringAsFixed(2)}",
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
                                children: [
                                  Column(
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
                                  ),
                                  Column(
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
                                  )
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
            ),
          ),
        ),
        
                  
      ],
    );
  }
}