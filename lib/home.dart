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

class _HomeState extends State<Home> with TickerProviderStateMixin {
  bool showMenuItemCard = false;
  Menu? selectedMenuItem;
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;
  

  void _toggleMenuItemCard(Menu? menu) {
    setState(() {
      selectedMenuItem = menu;
      showMenuItemCard = menu != null;
    });
    
    if (menu != null) {
      _controller.forward(); 
    } else {
      _controller.reverse();
    }
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    _offsetAnimation = Tween<Offset>(
      begin: const Offset(0.0, 1.0), 
      end: Offset.zero,               
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOut,
    ));
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
              child: const SplashText(strokeOpacity: 15, velocity: 10,),
            ),
          ),
          Positioned(
            left: -10,
            right: 0,
            bottom: 290,
            child: const SplashText(strokeOpacity: 15, fontsize: 115, velocity: 10, direction: TextDirection.rtl,),
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
                    SlideTransition(
                      position: _offsetAnimation,
                      child: MenuItemCard(
                        onClose: () => _toggleMenuItemCard(null),
                        menu: selectedMenuItem!,
                      ),
                    ),
                  ],
                ),
              ),
        ],
      ));
  }
}
