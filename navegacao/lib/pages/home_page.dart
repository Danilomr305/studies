import 'package:flutter/material.dart';
import 'package:navegacao/pages/abc_page.dart';
import 'package:navegacao/pages/home_principal.dart';
import 'package:navegacao/pages/seguranca_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final PageController _pageController = PageController();
  int navegacaoIndexx = 0;
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: WidgetsApp.debugAllowBannerOverride,
        title: const Text(
          'Navegação'
        ),
      ),
      drawer: const Drawer(

      ),
      body: PageView(
        controller: _pageController,
        children: const [
          HomePrncipal(),
          SegurancaPage(),
          AbcPage()
        ],
      ),
     bottomNavigationBar: BottomNavigationBar(
      currentIndex: navegacaoIndexx,
      onTap: (int navegacao) {
        _pageController.animateToPage(
          navegacao, 
          duration: const Duration(milliseconds: 600), 
          curve: Curves.decelerate);
          
          setState(() {
            navegacaoIndexx = navegacao;
          });
      }
      ,
      items: const[
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: 'Home'
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.pest_control_outlined),
          label: 'Pesquisar'
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.abc_outlined),
          label: 'Abc'
        )
      ],
     ),
    );
  }
}