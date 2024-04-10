import 'package:flutter/material.dart';
import 'package:navigaton/pages/segunda_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const SegundaPage())
            );
          }, 
          child: const Text(
            'Ir para segunda page'
          )
        ),
      ),
    );
  }
}