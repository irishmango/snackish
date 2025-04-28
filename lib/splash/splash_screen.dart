import 'package:flutter/material.dart';
import 'package:snackish/src/background/gradient_scaffold.dart';
import 'package:snackish/src/background/pink_background.dart';
import 'package:snackish/splash/splash_card.dart';
import 'package:snackish/splash/splash_text.dart';
import 'package:snackish/home/home.dart'; // <-- your Home page

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {
  List<bool> isVisible = List.generate(8, (_) => false);
  List<SplashText> splashTextList = [];

  late AnimationController _cupcakeController;
  late AnimationController _backgroundController;
  late AnimationController _cardController;
  late AnimationController _splashTextController;
  late AnimationController _pinkCoverController; // <-- important

  late Animation<Offset> _backgroundOffset;
  late Animation<Offset> _cardOffset;
  late Animation<Offset> _splashTextOffset;
  late Animation<Offset> _pinkCoverOffset; // <-- important

  @override
  void initState() {
    super.initState();

    splashTextList = List.generate(
      8,
      (index) => SplashText(
        enabled: false,
        fontsize: 140,
      ),
    );

    _cupcakeController = AnimationController(vsync: this, duration: const Duration(milliseconds: 500));
    _backgroundController = AnimationController(vsync: this, duration: const Duration(milliseconds: 800));
    _cardController = AnimationController(vsync: this, duration: const Duration(milliseconds: 800));
    _splashTextController = AnimationController(vsync: this, duration: const Duration(milliseconds: 400));
    _pinkCoverController = AnimationController(vsync: this, duration: const Duration(milliseconds: 800));

    _backgroundOffset = Tween<Offset>(begin: const Offset(0, -1), end: Offset.zero).animate(
      CurvedAnimation(parent: _backgroundController, curve: Curves.easeOut),
    );
    _cardOffset = Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero).animate(
      CurvedAnimation(parent: _cardController, curve: Curves.easeOut),
    );
    _splashTextOffset = Tween<Offset>(begin: const Offset(-1, 0), end: Offset.zero).animate(
      CurvedAnimation(parent: _splashTextController, curve: Curves.easeIn),
    );
    _pinkCoverOffset = Tween<Offset>(begin: const Offset(0, -1), end: Offset.zero).animate(
      CurvedAnimation(parent: _pinkCoverController, curve: Curves.easeOut),
    );

    _startAnimation();
  }

  Future<void> _startAnimation() async {
    for (int i = splashTextList.length - 1; i >= 0; i--) {
      await Future.delayed(const Duration(milliseconds: 200));
      setState(() {
        isVisible[i] = true;
      });
    }

    await Future.delayed(const Duration(milliseconds: 500));

    for (int i = splashTextList.length - 1; i > 0; i--) {
      await Future.delayed(const Duration(milliseconds: 200));
      setState(() {
        isVisible[i] = false;
      });
    }

    await Future.delayed(const Duration(milliseconds: 300));

    _cupcakeController.forward();
    await Future.delayed(const Duration(milliseconds: 500));

    await _backgroundController.forward();
    await _cardController.forward();
    await _splashTextController.forward();
  }

  void _orderNow() async {
  await _pinkCoverController.forward();
  if (mounted) {
    Navigator.of(context).pushReplacement(
      PageRouteBuilder(
        transitionDuration: const Duration(milliseconds: 400),
        pageBuilder: (context, animation, secondaryAnimation) => const Home(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        },
      ),
    );
  }
}

  @override
  void dispose() {
    _cupcakeController.dispose();
    _backgroundController.dispose();
    _cardController.dispose();
    _splashTextController.dispose();
    _pinkCoverController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GradientScaffold(
      child: Stack(
        children: [
          // Pink background (static)
          SlideTransition(
            position: _backgroundOffset,
            child: const PinkBackground(),
          ),

          // SplashText list
          Positioned(
            left: -10,
            child: Padding(
              padding: const EdgeInsets.only(top: 87),
              child: SingleChildScrollView(
                child: Column(
                  children: List.generate(8, (index) {
                    return AnimatedOpacity(
                      opacity: isVisible[index] ? 1.0 : 0.0,
                      duration: const Duration(milliseconds: 300),
                      child: splashTextList[index],
                    );
                  }),
                ),
              ),
            ),
          ),

          // Cupcake Image
          Positioned(
            top: 205,
            right: -90,
            child: FadeTransition(
              opacity: _cupcakeController,
              child: Transform.scale(
                scale: 1.2,
                child: Image.asset(
                  'assets/grafiken/cupcake_chick.png',
                  width: 510,
                ),
              ),
            ),
          ),

          // Sliding Splash Text
          Positioned(
            bottom: 265,
            left: -10,
            right: 0,
            child: SlideTransition(
              position: _splashTextOffset,
              child: const SplashText(
                fontsize: 115,
                direction: TextDirection.rtl,
              ),
            ),
          ),

          // Splash Card
          Positioned(
            bottom: 100,
            left: 0,
            right: 0,
            child: SlideTransition(
              position: _cardOffset,
              child: Center(
                child: SplashCard(
                  onOrderNow: _orderNow,
                ),
              ),
            ),
          ),

          // Pink Cover Image
          SlideTransition(
            position: _pinkCoverOffset,
            child: SizedBox.expand(
              child: Transform.translate(
                offset: const Offset(0, 0),
              child: Image.asset(
                'assets/hintergründe/background_pink_big.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          )
        ],
      ),
    );
  }
}