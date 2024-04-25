import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _contar = 5;

  int _dcontar = 2;

  void _iniciardescontagem() {
    setState(() {
      _contar --;
    });
  }

  void _iniciarcontagem() {
    setState(() {
      _contar ++;
    });
  }

  void _iniciarmulticacaocontagem() {
    setState(() {
      _contar * _dcontar;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$_contar')
          ],
        ),
      ),

      

      floatingActionButton:   
        FloatingActionButton(
          onPressed: _iniciarcontagem,
          child: const Icon(Icons.add),
        ),
    );
  }
}