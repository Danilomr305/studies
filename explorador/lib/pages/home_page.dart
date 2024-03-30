import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: WidgetsApp.debugAllowBannerOverride,
        title: const Text(
          'Explorador',
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
        ),
      ),
        body: Container(
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
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () {

          },
          backgroundColor: Colors.indigo,
          child: const Icon(
            color: Colors.white,
            Icons.access_alarm_outlined
          ),
        ),

        bottomNavigationBar: BottomNavigationBar(
          items: const  [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'home'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.accessible_forward),
              label: 'segurança'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_a_photo_rounded),
              label: 'foto'
            ),
          ]
          ),
      );
  }
}