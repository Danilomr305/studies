import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Eu tenho que conseguir'
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Logo vai aparecer imagens'
            ),

            Image.network('https://br.freepik.com/fotos-vetores-gratis/programacao')
          ],
        ),
      ),
    );
  }
}