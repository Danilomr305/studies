import 'dart:math';

import 'package:flutter/material.dart';

class OnePage extends StatefulWidget {
  const OnePage({super.key});

  @override
  State<OnePage> createState() => _OnePageState();
}

class _OnePageState extends State<OnePage> {


  ValueNotifier<int> valorAleatorio = ValueNotifier<int>(0);

  random() async {
    for (int i = 0; i < 10; i++) {
      await Future.delayed( const Duration(seconds: 1));
      valorAleatorio.value = Random().nextInt(102);
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
            ValueListenableBuilder(
              valueListenable: valorAleatorio, 
              builder: (_, value, __) => Text(
                'Valor eh: $value',
                style: const TextStyle(
                  fontSize: 20
                ),
              )
            ),

            const SizedBox(
              height: 10,
            ),

            ElevatedButton(
              
              onPressed: () => random(), 
              child: const Text('Custom BTN',
              style: TextStyle(
                fontSize: 18
              ),)
            )

          ],
        ),
      ),
    );
  }
}