import 'package:flutter/material.dart';

class GradientScaffold extends StatelessWidget {
  final Widget child;

  const GradientScaffold({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            
            begin: Alignment.center,
            end: Alignment(0.0, 4.5),
            colors: [
              Color.fromRGBO(47, 43, 34, 1),
              Color.fromRGBO(67, 127, 151, 1),
              
            ]
          ),
        ),
        child: Container(child: child)),
    );
  }
}

