import 'package:flutter/material.dart';

class AppColors {
  static Color primaryColor = Colors.white;
}

ThemeData primaryTheme = ThemeData(

  // Scaffold Color


  // TextTheme
   
  textTheme: const TextTheme(
    
    bodySmall: TextStyle(),
    bodyMedium: TextStyle(fontFamily: 'SFProText', fontSize: 12, letterSpacing: 0.35, fontWeight: FontWeight.w500,),
    bodyLarge: TextStyle(fontSize: 16),
    
    headlineSmall: TextStyle(fontFamily: 'SFProText', fontSize: 13, fontWeight: FontWeight.bold, letterSpacing: -0.35, color: Colors.white),
    headlineMedium: TextStyle(fontFamily: 'SFProText', fontSize: 15, height: 1.9, fontWeight: FontWeight.bold, color: Colors.white),
    headlineLarge: TextStyle(),

    titleSmall: TextStyle(),
    titleMedium: TextStyle(fontFamily: 'SFProText', fontSize: 15, fontWeight: FontWeight.bold, letterSpacing: 15, color: Colors.white),
    titleLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),

    displaySmall: TextStyle(fontFamily: 'Inter', fontSize: 16, height: 1.87, fontWeight: FontWeight.w900,),
    displayMedium: TextStyle(fontFamily: 'Inter', fontSize: 22, height: 1.27, letterSpacing: 0.35, fontWeight: FontWeight.w900),

  ),
);

class BodySmallText extends StatelessWidget {
  final String text;
  const BodySmallText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.bodySmall);
  }
}

class BodyMediumText extends StatelessWidget {
  final String text;
  const BodyMediumText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.bodyMedium);
  }
}

class BodyLargeText extends StatelessWidget {
  final String text;
  const BodyLargeText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.bodyLarge);
  }
}





class HeadlineSmallText extends StatelessWidget {
  final String text;
  const HeadlineSmallText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.headlineSmall);
  }
}

class HeadlineMediumText extends StatelessWidget {
  final String text;
  const HeadlineMediumText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.headlineMedium);
  }
}

class HeadlineLargeText extends StatelessWidget {
  final String text;
  const HeadlineLargeText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.headlineLarge);
  }
}






class TitleSmallText extends StatelessWidget {
  final String text;
  const TitleSmallText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.titleSmall);
  }
}

class TitleMediumText extends StatelessWidget {
  final String text;
  const TitleMediumText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.titleMedium);
  }
}

class TitleLargeText extends StatelessWidget {
  final String text;
  const TitleLargeText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.titleLarge);
  }
}






class DisplaySmallText extends StatelessWidget {
  final String text;
  const DisplaySmallText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.displaySmall);
  }
}

class DisplayMediumText extends StatelessWidget {
  final String text;
  const DisplayMediumText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.displayMedium);
  }
}
