import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snackish/widgets/clear_card.dart';
import 'package:snackish/widgets/order_button.dart';
import 'package:flutter_svg/flutter_svg.dart';


class MenuItemCard extends StatelessWidget {
  MenuItemCard({super.key});


  @override
  Widget build(BuildContext context) {
  double screenHeight = MediaQuery.of(context).size.height;

    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: double.infinity,
            height: screenHeight * 6/7,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment(0.0, 5.5),
                colors: [
                  Color.fromRGBO(47, 43, 34, 1),
                  Color.fromRGBO(67, 127, 151, 1),
            ]
          ),
            ),
            child: Stack(
              children: [
                Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: SvgPicture.asset('assets/icons/close_button_icon.svg', height: 30,),
                )),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  spacing: 32,
                  children: [
                    Center(
                      child: SizedBox(
                        width: 340,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 170,
                              height: 30,
                              color: Color.fromRGBO(118, 118, 128, .24),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text("Small",
                                  style: TextStyle(
                                    fontSize: 11,
                                    letterSpacing: -0.08,
                                    height: 1.6,
                                    color: Color.fromRGBO(235, 235, 235, .6)
                                  )
                                  ,),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 9),
                                    child: VerticalDivider(
                                      width: 1,
                                      thickness: 1,
                                    ),
                                  ),
                                  Text("Medium",
                                  style: TextStyle(
                                    fontSize: 11,
                                    letterSpacing: -0.08,
                                    height: 1.6,
                                    color: Color.fromRGBO(235, 235, 235, .6)
                                  )
                                  ),
                                  Text("Large",
                                  style: TextStyle(
                                    fontSize: 11,
                                    letterSpacing: -0.08,
                                    height: 1.6,
                                    color: Color.fromRGBO(235, 235, 235, .6)
                                  )
                                  )
                                  ],
                              ),
                            ),

                            Row(
                              spacing: 16,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    
                                  },
                                  child: SvgPicture.asset('assets/icons/minus_button.svg', height: 30,)),
                                Text("1",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  height: 1.35,
                                  color: Colors.white
                                ) 
                                ,),
                                GestureDetector(
                                  onTap: () {
                                    
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
                      child: OrderButton(width: 340, title: "Add to order for €8.99",),
                    ),
                  ],
                )
              ]
            ),
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Image.asset('assets/grafiken/cupkake_cat.png'),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Center(
            child: SizedBox(
              height: 328,
              width: 340,
              child: Stack(
                children: [
                  ClearCard(
                    height: 328,
                    width: 340,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.favorite_border_rounded,
                              color: Color.fromRGBO(235, 235, 240, 0.6),
                            ),
                            Text(
                              " 200",
                              style: TextStyle(
                                color: Color.fromRGBO(235, 235, 240, 0.6),
                                height: 1,
                              ),
                            ),
                          ],
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Mogli's Cup",
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
                                "Lorem ipsum dolor sit amet consectetur. Non feugiat imperdiet a vel sit at amet. Mi accumsan feugiat magna aliquam feugiat ac et. Pulvinar hendrerit id arcu at sed etiam semper mi hendrerit. Id aliquet quis quam.",
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
                                  vertical: 12, horizontal: 16),
                              child: Text(
                                "€ 8.99",
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