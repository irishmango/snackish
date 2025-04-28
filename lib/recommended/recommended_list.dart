import 'package:flutter/material.dart';
import 'package:snackish/recommended/recommend_card.dart';
import 'package:snackish/models/menu.dart';
import 'package:snackish/theme.dart';

class RecommendedList extends StatelessWidget {
  final void Function(Menu) onTapCard;

  const RecommendedList({super.key, required this.onTapCard});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 10,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: DisplaySmallText("We Recommend")
        ),
        SizedBox(
          height: 292,
          child: ListView.separated(
            padding: EdgeInsets.only(left: 20, right: 20),
            itemCount: recommendationMenu.length,
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 24,);
            },
            itemBuilder: (context, index) {
              final menuItem = recommendationMenu[index];
              return RecommendCard(
                recommendationMenu: menuItem,
                onTap: () => onTapCard(menuItem), 
              );
            }
          ),
        ),
      ],
    );
  }
}
