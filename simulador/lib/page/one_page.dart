import 'dart:math';

import 'package:flutter/material.dart';

class OnePage extends StatefulWidget {
  const OnePage({super.key});

  @override
  State<OnePage> createState() => _OnePageState();
}

class _OnePageState extends State<OnePage> {


  int valorAleatorio = 0;

  random() async {
    for (int i = 0; i < 10; i++) {
      await Future.delayed(Duration(seconds: 1));
      setState(() {
        valorAleatorio = Random().nextInt(100);
      });
    }
  }

  @override
  Widget build(BuildContext context) {

    print('build');

    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Valor eh: $valorAleatorio',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),

            SizedBox(
              height: 10,
            ),

          ],
        ),
      ),
    );
  }
}