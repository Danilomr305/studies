// ignore_for_file: unused_import
import 'package:flutter/material.dart';
import './page_dois.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Navigator(
        onGenerateRoute: (settings) {
          return MaterialPageRoute( builder: (context) =>const HomePage(),
          );
        },
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent.shade100,
        title:const Text('Page Home',
        style: 
          TextStyle(
            color: Colors.black45,
            fontWeight: FontWeight.bold,
            fontFamily: AutofillHints.username,
          ),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.push(
            context,
            PageTransition(
              child: const PageAnimacao(),
              type: PageTransitionType.rotate,
              alignment: Alignment.center,
              duration: const Duration(milliseconds: 600)
            ),
          ),
          child: const Text('Ir para pagina 2'),
        ),
      ),
    );
  }
}
