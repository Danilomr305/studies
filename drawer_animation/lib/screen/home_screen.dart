import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      color: Colors.white24,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 50,
            ),

            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    child: const Icon(Icons.menu),
                    onTap: () {},
                  ),

                  const Text(
                    'Danilo Gostosão',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black87,
                      decoration: TextDecoration.none,
                    ),
                  ),

                  Container()
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),

            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 35
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 150,
                        height: 150,
                        decoration: const BoxDecoration(
                          
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}