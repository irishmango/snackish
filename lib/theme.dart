import 'package:flutter/material.dart';

class AppColors {
  static Color primaryColor = Colors.white;
}

ThemeData primaryTheme = ThemeData(




  // TextTheme
   
  textTheme: const TextTheme(
    
    bodySmall: TextStyle(fontSize: 11, fontWeight: FontWeight.w600, letterSpacing: -0.08, height: 1.6, color: Color.fromRGBO(235, 235, 245, .6)),
    bodyMedium: TextStyle(fontFamily: 'SFProText', fontSize: 12, letterSpacing: 0.35, fontWeight: FontWeight.w500, color: Colors.white),
    bodyLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white,),
    
    headlineSmall: TextStyle(fontFamily: 'SFProText', fontSize: 13, fontWeight: FontWeight.bold, letterSpacing: -0.35, color: Colors.white),
    headlineMedium: TextStyle(fontFamily: 'SFProText', fontSize: 15, height: 1.9, fontWeight: FontWeight.bold, color: Colors.white),
    headlineLarge: TextStyle(fontWeight: FontWeight.w600, fontSize: 13, height: 1.9, letterSpacing: -0.35, color: Colors.white),

    titleSmall: TextStyle(),
    titleMedium: TextStyle(fontFamily: 'SFProText', fontSize: 15, fontWeight: FontWeight.bold, letterSpacing: 15, color: Colors.white),
    titleLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),

    displaySmall: TextStyle(fontFamily: 'Inter', fontSize: 16, height: 1.87, fontWeight: FontWeight.w900, color: Colors.white),
    displayMedium: TextStyle(fontFamily: 'Inter', fontSize: 22, height: 1.27, letterSpacing: 0.35, fontWeight: FontWeight.w900, color: Colors.white),

  ),
);





class BodySmallText extends StatelessWidget {
  final String text;
  final Color? color;
  const BodySmallText(this.text, {this.color, super.key});

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme.bodySmall;
    return Text(text, style: style?.copyWith(color: color ?? style.color));
  }
}

class BodyMediumText extends StatelessWidget {
  final String text;
  final Color? color;
  const BodyMediumText(this.text, {this.color, super.key});

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme.bodyMedium;
    return Text(text, style: style?.copyWith(color: color ?? style.color));
  }
}

class BodyLargeText extends StatelessWidget {
  final String text;
  final Color? color;
  const BodyLargeText(this.text, {this.color, super.key});

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme.bodyLarge;
    return Text(text, style: style?.copyWith(color: color ?? style.color));
  }
}

class HeadlineSmallText extends StatelessWidget {
  final String text;
  final Color? color;
  const HeadlineSmallText(this.text, {this.color, super.key});

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme.headlineSmall;
    return Text(text, style: style?.copyWith(color: color ?? style.color));
  }
}

class HeadlineMediumText extends StatelessWidget {
  final String text;
  final Color? color;
  const HeadlineMediumText(this.text, {this.color, super.key});

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme.headlineMedium;
    return Text(text, style: style?.copyWith(color: color ?? style.color));
  }
}

class HeadlineLargeText extends StatelessWidget {
  final String text;
  final Color? color;
  const HeadlineLargeText(this.text, {this.color, super.key});

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme.headlineLarge;
    return Text(text, style: style?.copyWith(color: color ?? style.color));
  }
}

class TitleSmallText extends StatelessWidget {
  final String text;
  final Color? color;
  const TitleSmallText(this.text, {this.color, super.key});

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme.titleSmall;
    return Text(text, style: style?.copyWith(color: color ?? style.color));
  }
}

class TitleMediumText extends StatelessWidget {
  final String text;
  final Color? color;
  const TitleMediumText(this.text, {this.color, super.key});

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme.titleMedium;
    return Text(text, style: style?.copyWith(color: color ?? style.color));
  }
}

class TitleLargeText extends StatelessWidget {
  final String text;
  final Color? color;
  const TitleLargeText(this.text, {this.color, super.key});

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme.titleLarge;
    return Text(text, style: style?.copyWith(color: color ?? style.color));
  }
}

class DisplaySmallText extends StatelessWidget {
  final String text;
  final Color? color;
  const DisplaySmallText(this.text, {this.color, super.key});

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme.displaySmall;
    return Text(text, style: style?.copyWith(color: color ?? style.color));
  }
}

class DisplayMediumText extends StatelessWidget {
  final String text;
  final Color? color;
  const DisplayMediumText(this.text, {this.color, super.key});

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme.displayMedium;
    return Text(text, style: style?.copyWith(color: color ?? style.color));
  }
}
