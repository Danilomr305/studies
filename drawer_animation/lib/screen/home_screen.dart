import 'package:drawer_animation/screen/drawer_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white24,
        title: Text(
          'Danilo Gostão',
          style: TextStyle(
            color: Colors.white
          ),
        ),
      ),
      drawer: DrawerScreen(),
    );
  }
}