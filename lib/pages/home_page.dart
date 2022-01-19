// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:aulaflutterfinal/models/time.dart';

import '/controller/home_controller.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var controller;

  @override
  void initState() {
    super.initState();
    controller = HomeController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Brasileirão'),
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext contexto, int i) {
          final List<Time> tabela = controller.tabela;
          return ListTile(
            leading: Image.network(tabela[i].brasao),
            title: Text(tabela[i].nome),
            trailing: Text(
              tabela[i].pontos.toString(),
            ),
          );
        },
        separatorBuilder: (_, __) => const Divider(),
        padding: const EdgeInsets.all(16),
        itemCount: controller.tabela.length,
      ),
    );
  }
}
