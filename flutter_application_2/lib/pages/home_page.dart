import 'package:flutter/material.dart';

import 'drawer_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _contar = 0;

  void _iniciarcontagem() {
    setState(() {
      _contar ++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      drawer: const DrawerPage(),
      appBar: AppBar(
        centerTitle: WidgetsApp.debugAllowBannerOverride,
        backgroundColor: Colors.lightGreenAccent,
        title: const  Text(
          'Flutter App',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            letterSpacing: 1.5,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Valor de clickes eh: $_contar!',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 18
            ),)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightGreenAccent,
        onPressed: _iniciarcontagem,
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
    );
  }
}