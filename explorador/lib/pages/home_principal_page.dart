import 'package:flutter/material.dart';

class HomePrincipalPage extends StatelessWidget {
  const HomePrincipalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.indigoAccent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Explorando',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
              ),

              const SizedBox(
                height: 30,
              ),

              Container(
                height: 80,
                width: 80,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  
                ),
              ),

              const SizedBox(
                height: 30,
              ),

              const Text(
                'Fazendo teste para que assim eu venha \n me torna um grande desenvolvedor!',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  decoration: TextDecoration.underline,
                ),
              )
            ],
          ),
        );
  }
}