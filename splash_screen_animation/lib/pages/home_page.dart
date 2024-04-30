// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
   Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  int _clices = 0;

  void _iniciarcontagem() {
    setState(() {
      _clices ++;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Icon(
              Icons.people,
              size: 70,
            ),

            const SizedBox(
              height: 10,
            ),

            const Text(
              'A contagem de clices eh:'
            ),

            const SizedBox(
              height: 4,
            ),

            Text(
              '$_clices'
            )
          ],
        )
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: _iniciarcontagem,
        child: const Icon(
          Icons.add,
          color: Colors.lightGreenAccent,
        ),
      ),
    );
  }
}