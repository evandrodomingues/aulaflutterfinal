// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:aulaflutterfinal/models/time.dart';
import 'package:aulaflutterfinal/pages/time_page.dart';

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
        itemBuilder: (BuildContext contexto, int time) {
          final List<Time> tabela = controller.tabela;
          return ListTile(
            onTap: () {
              Navigator.push(
                contexto,
                MaterialPageRoute(
                  builder: (_) => TimePage(
                    key: Key(tabela[time].nome),
                    time: tabela[time],
                  ),
                ),
              );
            },
            leading: Image.network(tabela[time].brasao),
            title: Text(tabela[time].nome),
            trailing: Text(
              tabela[time].pontos.toString(),
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
