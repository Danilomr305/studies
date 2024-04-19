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

  callAPI() async {
    var client = http.Client();
try {
  var response = await client.get(
      Uri.parse('https://jsonplaceholder.typicode.com/posts'),
  );
  var decodedResponse = jsonDecode((response.body));
  posts.value = decodedResponse.map((e) => Post.fromJson(e)).toList();

} finally {
  client.close();
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
              ValueListenableBuilder<List<Post>>(
                valueListenable: posts, 
                builder: (_, value, __) => ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (_, idx) => ListTile(
                    title: Text(
                      value[idx].title
                    ),
                  ),
                  itemCount: value.length,
                )
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