// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/home_page.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({super.key});

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {

  String title = 'danilomr305@gmail.com';

  void _volta() {
    setState(() {
      Navigator.pop(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 1,
      child: Scaffold(
        backgroundColor: Colors.black87,
        body: Container(
          padding: const EdgeInsets.only(
            top: 55,
            left: 10,
            right: 10,
          ),
          child: Column(    
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding:  EdgeInsets.only(left: 100),
                child: CircleAvatar(                         
                  maxRadius: 30,       
                  backgroundImage: AssetImage('imagens/say e dan.jpg'),
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              Text(
                title, style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
              ),

              const Divider(
                color: Colors.lightGreenAccent,
              ),
              
              const SizedBox(
                height: 10,
              ),

              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ListTile(
                    leading: Icon(
                      Icons.home,
                      size: 40,
                      color: Colors.white,
                    ),
                    title: Text(
                      'Home',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                   
                  SizedBox(
                    height: 10,
                  ),

                  ListTile(
                    leading: Icon(
                      Icons.history,
                      size: 40,
                      color: Colors.white,
                    ),
                    title: Text(
                      'History',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                   
                  SizedBox(
                    height: 10,
                  ),

                  ListTile(
                    leading: Icon(
                      Icons.coffee_rounded,
                      size: 40,
                      color: Colors.white,
                    ),
                    title: Text(
                      'Conta',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                   
                  SizedBox(
                    height: 10,
                  ),
                ],
              )
              
              
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.lightGreenAccent,
          onPressed: _volta,
          child: const Icon(Icons.home),
        ),
      ),
    );
  }
}