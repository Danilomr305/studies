// ignore_for_file: must_be_immutable

import 'package:explorador/pages/foto_page.dart';
import 'package:explorador/pages/home_principal_page.dart';
import 'package:explorador/pages/seguranca_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController();
  int navegacaoIndex = 0;

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
        body: PageView(
          
          controller: _pageController,
          children: const [
            HomePrincipalPage(),
            SegurancaPage(),
            FotoPage()
          ],
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
          currentIndex: navegacaoIndex,
          onTap: (int navegacao) { _pageController.animateToPage(
            navegacao, 
            duration: const  Duration(milliseconds: 600), 
            curve: Curves.easeInSine,
          );
          setState(() {
            navegacaoIndex = navegacao;
          });
          },
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