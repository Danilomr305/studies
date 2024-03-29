// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import '../home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: const Column(
        children: [
          Icon(Icons.abc_outlined,
          size: 40),
          Text('Danilo & Sayonara', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
        ],
      ),
      nextScreen: const Home(),
    );
  }
}