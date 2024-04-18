
// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../componentes/bottom_nav_bar.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with WidgetsBindingObserver {
  // navigate bottom bar
  // ignore: unused_field
  int _selectedIndex = 0;
  void navigateBottomBar(int index) {
  if (index >= 0 && index < _pages.length) {
    setState(() {
      _selectedIndex = index;
    });
  }
}

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  void dispose() {
   WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }


  // pages
  // ignore: unused_field
  final List <Widget> _pages = [
    // Tela principal
    const HomePage(),

    
  ];

  @override
  Widget build(BuildContext context) {
      return 
          ValueListenableBuilder(
            builder: (BuildContext context, Brightness tema, _) => 
              Scaffold(
                backgroundColor: Colors.white38,
                bottomNavigationBar: BottomNavBar(
                  onTabChange: (index) => navigateBottomBar(index),
                ),
                body: _pages[_selectedIndex],
                
              ), //valueListenable: ,
         );
  }
}