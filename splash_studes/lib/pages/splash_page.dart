import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:splash_studes/pages/home_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    super.initState();
   Future.delayed( const Duration(seconds: 3)).then(
    (_) => Navigator.of(context).pushReplacementNamed('/home'),
  );
    
    
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      duration: 3000,
      splash: 'imagens/iconprog.jpg',
      splashTransition: SplashTransition.slideTransition,
      nextScreen: const HomePage(),
      curve: Curves.easeInBack,
    );
  }
}