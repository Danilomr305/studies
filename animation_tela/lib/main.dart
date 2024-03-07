// ignore_for_file: unused_import

import 'package:animation_tela/page_dois.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
        title: const Text('PAGE HOME'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: ElevatedButton(
                onPressed: () => Navigator.push(
                    context,
                    PageTransition(
                      child: const PageAnimacao(), 
                      type: PageTransitionType.fade)
                  )
                , 
                child: const Text('Ir para tela 2')
              ),
            )
          ],
        ),
      ),
      ),
    );
  }
}
