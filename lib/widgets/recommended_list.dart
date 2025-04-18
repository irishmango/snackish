import 'package:flutter/material.dart';
import 'package:snackish/widgets/recommend_card.dart';
import 'package:snackish/models/menu.dart';

class RecommendedList extends StatelessWidget {
  const RecommendedList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 10,
      children: [
        Text("We Recommend",
        style: TextStyle(
          fontFamily: 'Inter',
          fontSize: 15,
          fontWeight: FontWeight.w900,
          height: 1.87,
          color: Colors.white
        ),
        ),
        SizedBox(
          height: 250,
          child: ListView.separated(
            itemCount: recommendationMenu.length,
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 24,);
            },
            itemBuilder:(context, index) {
              return RecommendCard(menu: recommendationMenu[index],);
            }, 
          ),
        ),
      ],
    );
  }
}