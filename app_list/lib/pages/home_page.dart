import 'package:app_list/repository/list_repositories.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    final cadastro = ListRepository.cadastro;

    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListView.separated(
            itemBuilder: (BuildContext context, int conta) {
              return ListTile(
                leading: Image.asset(cadastro[conta].icon),
                title: Text(cadastro[conta].nome),
              );
            },
            separatorBuilder: (_,__) => const Divider(),
            itemCount: cadastro.length,
          )
        ],
      ),
    );
  }
}