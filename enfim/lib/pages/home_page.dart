// ignore_for_file: unused_element

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _conta = 0;

  void _iniciacontagem() {
    setState(() {
      _conta++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$_conta',
            style: TextStyle(fontSize: 20),)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _iniciacontagem,
        child: Icon(Icons.add),
      ),
    );
  }
}