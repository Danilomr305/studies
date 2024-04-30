import 'package:flutter/material.dart';
import 'package:splash_screen_animation/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Icon(
              Icons.people,
              size: 50,
            ),

            const SizedBox(
              height: 10,
            ),

            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text(
                  'Login'
                )
              ),
            ),

            const SizedBox(
              height: 30,
            ),

            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text(
                  'Senha'
                ),
                
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Homepage())
            );
          }, 
          child: const Text(
            'Entrar'
          )
        ),

          ],
        ),
      ),
    );
  }
}