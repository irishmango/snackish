import 'package:flutter/material.dart';
import 'package:snackish/gradient_scaffold.dart';
import 'package:snackish/home_nav_bar.dart';
import 'package:snackish/models/menu.dart';
import 'package:snackish/pink_background_big.dart';
import 'package:snackish/widgets/home_main_card.dart';
import 'package:snackish/widgets/recommended_list.dart';
import 'package:snackish/widgets/splash_text.dart';
import 'package:snackish/menu_item_card.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool showMenuItemCard = false;
  Menu? selectedMenuItem;
  

  void _toggleMenuItemCard(Menu? menu) {
    setState(() {
      selectedMenuItem = menu;
      showMenuItemCard = menu != null;
    });
}

  @override
  Widget build(BuildContext context) {
    return GradientScaffold(
      child: Stack(
        children: [
          const PinkBackgroundBig(),
          Positioned(
            left: -10,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.only(top: 50),
              child: const SplashText(strokeOpacity: 15, enabled: false,),
            ),
          ),
          Positioned(
            left: -10,
            right: 0,
            bottom: 290,
            child: const SplashText(strokeOpacity: 15, fontsize: 115, enabled: false,),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                HomeNavBar(),
                SizedBox(height: 45),
                SizedBox(
                  height: 265,
                  child: HomeMainCard()
                ),
                SizedBox(height: 70,),
                RecommendedList(onTapCard: _toggleMenuItemCard),
                
                
              ],
            ),
          ),
          if (showMenuItemCard && selectedMenuItem != null)
              Positioned.fill(
                child: Stack(
                  children: [
                    Container(
                      color: Colors.black.withAlpha(200),
                    ),
                    MenuItemCard(
                      onClose: () => _toggleMenuItemCard(null),
                      menu: selectedMenuItem!,
                    ),
                  ],
                ),
              ),
        ],
      ));
  }
}
