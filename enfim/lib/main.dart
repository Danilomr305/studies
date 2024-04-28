import 'package:enfim/Pages/drawer_page.dart';
import 'package:flutter/material.dart';

  class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _contar = 0;

  void _iniciarcontagem() {
    setState(() {
      _contar++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white24,
        title: const Text(
          'Enfim',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),
        ),
        centerTitle: WidgetsApp.debugShowWidgetInspectorOverride,
      ),

      drawer: const DrawerPage(),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'iniciar contagem: $_contar'
            )
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _iniciarcontagem,
        child: const Icon(Icons.add),
      ),
    );
  }
}