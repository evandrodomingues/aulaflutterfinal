import 'package:aulaflutterfinal/models/time.dart';
import 'package:aulaflutterfinal/pages/time_page.dart';
import 'package:aulaflutterfinal/repositories/times_repository.dart';
import 'package:aulaflutterfinal/widgets/brasao.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '/controller/home_controller.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // ignore: prefer_typing_uninitialized_variables
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
      body: Consumer<TimesRepository>(builder: (context, repositorio, child) {
        return ListView.separated(
          itemCount: repositorio.times.length,
          itemBuilder: (BuildContext contexto, int time) {
            final List<Time> tabela = repositorio.times;
            return ListTile(
              leading: Brasao(
                image: tabela[time].brasao,
                width: 40,
              ),
              title: Text(tabela[time].nome),
              subtitle: Text('Titulos: ${tabela[time].titulos.length}'),
              trailing: Text(
                tabela[time].pontos.toString(),
              ),
              onTap: () {
                Get.to(() => TimePage(
                      key: Key(tabela[time].nome),
                      time: tabela[time],
                    ));
              },
            );
          },
          separatorBuilder: (_, __) => const Divider(),
          padding: const EdgeInsets.all(16),
        );
      }),
    );
  }
}
