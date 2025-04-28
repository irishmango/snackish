import 'package:flutter/material.dart';
import 'package:snackish/src/background/gradient_scaffold.dart';
import 'package:snackish/src/background/pink_background.dart';
import 'package:snackish/widgets/splash_card.dart';
import 'package:snackish/splash/splash_text.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {
  List<bool> isVisible = List.generate(8, (_) => false);

  late AnimationController _cupcakeController;
  late AnimationController _backgroundController;
  late AnimationController _cardController;
  late AnimationController _splashTextController;

  late Animation<Offset> _backgroundOffset;
  late Animation<Offset> _cardOffset;
  late Animation<Offset> _splashTextOffset;

  @override
  void initState() {
    super.initState();
    _cupcakeController = AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    _backgroundController = AnimationController(vsync: this, duration: Duration(milliseconds: 800));
    _cardController = AnimationController(vsync: this, duration: Duration(milliseconds: 800));
    _splashTextController = AnimationController(vsync: this, duration: Duration(milliseconds: 400));

    _backgroundOffset = Tween<Offset>(begin: Offset(0, -1), end: Offset(0, 0)).animate(
      CurvedAnimation(parent: _backgroundController, curve: Curves.easeOut),
    );
    _cardOffset = Tween<Offset>(begin: Offset(0, 2), end: Offset(0, 0)).animate(
      CurvedAnimation(parent: _cardController, curve: Curves.easeOut),
    );
    _splashTextOffset = Tween<Offset>(begin: Offset(-1, 0), end: Offset(0, 0)).animate(
      CurvedAnimation(parent: _splashTextController, curve: Curves.easeIn)
    );

    _startAnimation();
  }

  Future<void> _startAnimation() async {
    // splash text comes from bottom
    for (int i = isVisible.length - 1; i >= 0; i--) {
      await Future.delayed(const Duration(milliseconds: 200));
      setState(() {
        isVisible[i] = true;
      });
    }

    await Future.delayed(const Duration(milliseconds: 500));

    // splash text hides from bottom
    for (int i = isVisible.length - 1; i > 0; i--) {
      await Future.delayed(const Duration(milliseconds: 200));
      setState(() {
        isVisible[i] = false;
      });
    }

    await Future.delayed(const Duration(milliseconds: 300));

    // show cupcake
    _cupcakeController.forward();
    await Future.delayed(const Duration(milliseconds: 500));

    // background and card come in
    await _backgroundController.forward();
    await _cardController.forward();
    await _splashTextController.forward();
  }

  @override
  void dispose() {
    _cupcakeController.dispose();
    _backgroundController.dispose();
    _cardController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GradientScaffold(
      child: Stack(
        children: [
          // pink bg moves in
          SlideTransition(
            position: _backgroundOffset,
            child: const PinkBackground(),
          ),

          // Splash texts
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
                      child: SplashText(
                        enabled: false,
                        fontsize: 140,
                      ),
                    );
                  }),
                ),
              ),
            ),
          ),

          // Cupcake image 
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


          // lower Splash text 
          Positioned(
              bottom: 265,
              left: -10,
              right: 0,
              child: SlideTransition(
                position: _splashTextOffset,
                child: SplashText(fontsize: 115, direction: TextDirection.rtl,)),
            ),
          

          // Splash card
          Positioned(
            bottom: 100,
            left: 0,
            right: 0,
            child: SlideTransition(
              position: _cardOffset,
              child: const Center(
                child: SplashCard(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}