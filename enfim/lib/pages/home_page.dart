// ignore_for_file: unused_import, sized_box_for_whitespace

import 'package:enfim/models/fotos_models.dart';
import 'package:enfim/repository/fotos_repository.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  
  get ima => null;

  @override
  Widget build(BuildContext context) {

    final images = ImagemRepository.images;

    return SingleChildScrollView(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Eu tenho que conseguir'
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 400,
                
                child: ListTile(
                  leading: Image.network(images[ima].title),
                  title: Text(images[ima].name),
                  trailing: Text(images[ima].price.toString()),
                )
              )
            ]
          ),
        ),
      ),
    );
  }
}