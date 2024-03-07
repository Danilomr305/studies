import 'package:flutter/material.dart';

class PageAnimacao extends StatefulWidget {
  const PageAnimacao({super.key});

  @override
  State<PageAnimacao> createState() => _PageAnimacaoState();
}

class _PageAnimacaoState extends State<PageAnimacao> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PAGE ANUMACION'),
      ),
      body:const Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding:  EdgeInsets.all(12.0),
              child: 
                  Text('Volta Para tela 1')
              ),
          ],
        ),
      ),
    );
  }
}