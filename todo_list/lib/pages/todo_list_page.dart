// ignore_for_file: avoid_print, prefer_is_empty, sized_box_for_whitespace

import 'package:flutter/material.dart';

class TodoList extends StatefulWidget {
  const TodoList({super.key});

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {

  final TextEditingController _textEditingController = TextEditingController();

  List<String> tarefas = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: WidgetsApp.debugAllowBannerOverride,
        backgroundColor: Colors.green,
        title: const Text(
          'List de Tarefa',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            TextField(
              controller: _textEditingController,
            ),
            Container(
              height: 400,
              child: ListView.builder(
                itemCount: tarefas.length,
                itemBuilder: (context, index) {
                  return Text(tarefas[index]);
                },
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if(_textEditingController.text.length > 0) {
            tarefas.add(_textEditingController.text);
            _textEditingController.clear();

      
          }
          print('adicionou');
        },
        
        backgroundColor: Colors.green,
        child:const Icon(
          Icons.add
        ),
        
      ),
    );
  }
}