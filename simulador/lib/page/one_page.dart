// ignore_for_file: avoid_print

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:simulador/api/post_api.dart';

class OnePage extends StatefulWidget {
  const OnePage({super.key});

  @override
  State<OnePage> createState() => _OnePageState();
}

class _OnePageState extends State<OnePage> {


  ValueNotifier<List<Post>> posts = ValueNotifier<List<Post>>([]);
  ValueNotifier<bool> inLoader = ValueNotifier<bool>(false);

  callAPI() async {
    var client = http.Client();
    try {
      inLoader.value = true;
      var response = await client.get(
          Uri.parse('https://jsonplaceholder.typicode.com/posts'),
      );
      var decodedResponse = jsonDecode(response.body)  as List;
      posts.value = decodedResponse.map((e) => Post.fromJson(e)).toList();
      await Future.delayed( const Duration(milliseconds: 200));
    } finally {
      client.close();
      inLoader.value = false;
    }
  }

  @override
  Widget build(BuildContext context) {

    print('build');

    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedBuilder(
                animation: Listenable.merge([posts, inLoader]), 
                builder: (_, __) => inLoader.value ? const CircularProgressIndicator() : 
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: posts.value.length,
                  itemBuilder: (_, idx) => ListTile(
                    title: Text(posts.value[idx].title),
                  ),
                ),
              ),
          
              const SizedBox(
                height: 10,
              ),
          
              ElevatedButton(
                
                onPressed: () => callAPI(), 
                child: const Text('Custom BTN',
                style: TextStyle(
                  fontSize: 18
                ),)
              )
          
            ],
          ),
        ),
      ),
    );
  }
}