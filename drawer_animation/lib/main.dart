import 'package:drawer_animation/screen/drawer_screen.dart';
import 'package:drawer_animation/screen/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            HomeScreen(),
            DrawerScreen()
          ],
        ),
      ),
    );
  }
}