import 'package:flutter/material.dart';
import 'package:snackish/models/menu.dart';
import 'package:snackish/widgets/frosted_color_card.dart';

class RecommendCard extends StatelessWidget {
  final Menu menu;

  const RecommendCard({super.key, required this.menu});


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
          FrostedCardColor(),

        SizedBox(
          width: 190,
          height: 262,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 10,
            children: [

              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Center(
                  child: Image.asset(menu.imagePath, 
                  width: 142,),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 17.5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(menu.title,
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      height: 1.54,
                      letterSpacing: -0.5,
                      color: Colors.white
                    ),
                    ),
                    Text(menu.subtitle,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
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
                    Text(menu.price,
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      height: 1.54,
                      color: Colors.white
                    ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.favorite_border_outlined, color: Color.fromRGBO(235, 235, 245, 0.6)),
                        Text(menu.likes,
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
    );
  }
}
