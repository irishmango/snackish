import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';

class FoodDescriptionCard extends StatelessWidget {
  const FoodDescriptionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 770,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                color: const Color.fromARGB(255, 37, 37, 37),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x0C000000),
                    blurRadius: 100,
                    offset: Offset(0, 0),
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Icon(Icons.close_rounded, color: Colors.white,),
                )),
            ),
          ],
        ),
        Positioned(
          top: 20,
          left: 0,
          right: 0,
          child: Image.asset('assets/grafiken/cupkake_cat.png')
          ),
          Align(
            alignment: Alignment.center,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30), 
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                child: Container(
                  width: 340,
                  height: 330,
                  padding: const EdgeInsets.only(
                  top: 16,
                  left: 30,
                  right: 30,
                  bottom: 30,
                  ),
                  decoration: ShapeDecoration(
                    color: Colors.white.withAlpha(1),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        color: Colors.white.withAlpha(30),
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(Icons.favorite_border_rounded, color: Color.fromRGBO(235, 235, 240, 0.6)),
                          Text(" 200", 
                          style: TextStyle(color: Color.fromRGBO(235, 235, 240, 0.6),
                          height: 1)
                          
                          )
                          ],
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        spacing: 6,
                        children: [
                          Text("Mogli's Cup",
                          style: GoogleFonts.inter(
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w900,
                              height: 1.75
                            )),),
                            SizedBox(
                              width: 280,                              
                              child: Text("Lorem ipsum dolor sit amet consectetur. Non feugiat imperdiet a vel sit at amet. Mi accumsan feugiat magna aliquam feugiat ac et. Pulvinar hendrerit id arcu at sed etiam semper mi hendrerit. Id aliquet quis quam.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(235, 235, 245, 0.6),
                                height: 1.38,
                                letterSpacing: -0.08
                                ),),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 26),
                              child: Text("€ 8.99",
                              style: TextStyle(
                                color: Colors.white,
                                letterSpacing: 0.35,
                                fontSize: 17,
                                fontWeight: FontWeight.w600
                              ),),
                            )
                        ],
                      ),

                      Divider(
                        thickness: 0.5,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            flex: 1,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Ingredients",
                                  style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(235, 235, 245, 0.6),
                                  height: 1.38,
                                  letterSpacing: -0.08
                                  ),),
                                Text("ICONS")
                                // Row(
                                //   children: [
                                //     SvgPicture.asset('assets/icons/plant_icon.svg',
                                //     height: 22,
                                //     width: 22,)
                                //   ],
                                // )
                              ],
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text("Reviews",
                                  style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(235, 235, 245, 0.6),
                                    height: 1.38,
                                    letterSpacing: -0.08
                                    ),),
                                Text("STAR ICONS AND 4.0")
                              ],
                            ),
                          )

                        ],
                      )


                    ],
                  )

                
            )
              )
              )
            ),


      ],

    );
  }
}