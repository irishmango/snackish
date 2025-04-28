import 'package:flutter/material.dart';
import 'package:snackish/src/background/gradient_scaffold.dart';
import 'package:snackish/home/navigation/home_nav_bar.dart';
import 'package:snackish/models/menu.dart';
import 'package:snackish/src/background/pink_background_big.dart';
import 'package:snackish/home/main_card/home_main_card.dart';
import 'package:snackish/recommended/recommended_list.dart';
import 'package:snackish/splash/splash_text.dart';
import 'package:snackish/home/menu/menu_item/menu_item_card.dart';

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

  late AnimationController _pinkCoverController;
  late Animation<Offset> _pinkCoverOffset;

  @override
  void initState() {
    super.initState();

    // Menu Card Controller
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

    // Pink Cover Controller
    _pinkCoverController = AnimationController(
      duration: const Duration(milliseconds: 1000), 
      vsync: this,
    );
    _pinkCoverOffset = Tween<Offset>(
      begin: Offset.zero, 
      end: const Offset(0, -1), 
    ).animate(CurvedAnimation(
      parent: _pinkCoverController,
      curve: Curves.easeInOut,
    ));

    _startPinkCoverAnimation();
  }

  Future<void> _startPinkCoverAnimation() async {
    await Future.delayed(const Duration(milliseconds: 200)); 
    await _pinkCoverController.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    _pinkCoverController.dispose();
    super.dispose();
  }

  void _toggleMenuItemCard(Menu? menu) {
    if (menu != null) {
      setState(() {
        selectedMenuItem = menu;
        showMenuItemCard = true;
      });
      _controller.forward();
    } else {
      _controller.reverse().then((_) {
        if (mounted) {
          setState(() {
            showMenuItemCard = false;
            selectedMenuItem = null;
          });
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GradientScaffold(
      child: Stack(
        children: [
          const PinkBackgroundBig(),

          // Splash Texts
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

          // Home main content
          SingleChildScrollView(
            child: Column(
              children: [
                HomeNavBar(),
                SizedBox(height: 45),
                HomeMainCard(menu.last),
                // SizedBox(
                //   height: 330, 
                //   child: 
                  // child: ListView.builder(
                  //   scrollDirection: Axis.horizontal,
                  //   padding: const EdgeInsets.only(left: 20),
                  //   itemCount: menu.length,
                  //   itemBuilder: (context, index) {
                  //     return Padding(
                  //       padding: const EdgeInsets.only(right: 16),
                  //       child: HomeMainCard(menu[index]), 
                  //     );
                  //   },
                  // ),
                // ),
                SizedBox(height: 50,),
                RecommendedList(onTapCard: _toggleMenuItemCard),
              ],
            ),
          ),

          // Menu Item Slide In Card
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

            // Temporary pink foreground reveal
          SlideTransition(
            position: _pinkCoverOffset,
            child: SizedBox.expand(
              child: Image.asset(
                'assets/hintergründe/background_pink_big.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}