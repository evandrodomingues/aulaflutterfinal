import 'dart:collection';
import 'package:flutter/material.dart';
import '../models/time.dart';
import '../models/titulo.dart';

class TimesRepository extends ChangeNotifier {
  final List<Time> _times = [];

  UnmodifiableListView<Time> get times => UnmodifiableListView(_times);

  void addTitulo({required Time time, required Titulo titulo}) {
    time.titulos.add(titulo);
    notifyListeners();
  }

  void editTitulo({Titulo? titulo, String? ano, String? campeonato}) {
    titulo?.campeonato = campeonato!;
    titulo?.ano = ano!;
    notifyListeners();
  }

  TimesRepository() {
    _times.addAll([
      Time(
        nome: 'Flamengo',
        pontos: 71,
        brasao: 'https://logodetimes.com/times/flamengo/logo-flamengo-256.png',
        cor: Colors.red,
      ),
      Time(
        nome: 'Internacional',
        pontos: 69,
        brasao:
            'https://logodetimes.com/times/internacional/logo-internacional-256.png',
        cor: Colors.red,
      ),
      Time(
        nome: 'Atlético-MG',
        pontos: 65,
        brasao:
            'https://logodetimes.com/times/atletico-mineiro/logo-atletico-mineiro-256.png',
        cor: Colors.grey,
      ),
      Time(
        nome: 'São Paulo',
        pontos: 63,
        brasao:
            'https://logodetimes.com/times/sao-paulo/logo-sao-paulo-256.png',
        cor: Colors.red,
      ),
      Time(
        nome: 'Fluminense',
        pontos: 61,
        brasao:
            'https://logodetimes.com/times/fluminense/logo-fluminense-256.png',
        cor: Colors.teal,
      ),
      Time(
        nome: 'Grêmio',
        pontos: 59,
        brasao: 'https://logodetimes.com/times/gremio/logo-gremio-256.png',
        cor: Colors.blue,
      ),
      Time(
        nome: 'Palmeiras',
        pontos: 58,
        brasao:
            'https://logodetimes.com/times/palmeiras/logo-palmeiras-256.png',
        cor: Colors.green,
      ),
      Time(
        nome: 'Santos',
        pontos: 54,
        brasao: 'https://logodetimes.com/times/santos/logo-santos-256.png',
        cor: Colors.grey,
      ),
      Time(
        nome: 'Athletico-PR',
        pontos: 50,
        brasao:
            'https://logodetimes.com/times/atletico-paranaense/logo-atletico-paranaense-256.png',
        cor: Colors.red,
      ),
      Time(
        nome: 'Corinthians',
        pontos: 50,
        brasao:
            'https://logodetimes.com/times/corinthians/logo-corinthians-256.png',
        cor: Colors.grey,
      ),
      Time(
        nome: 'Bragantino',
        pontos: 50,
        brasao:
            'https://logodetimes.com/times/red-bull-bragantino/logo-red-bull-bragantino-256.png',
        cor: Colors.grey,
      ),
      Time(
        nome: 'Ceará',
        pontos: 49,
        brasao: 'https://logodetimes.com/times/ceara/logo-ceara-256.png',
        cor: Colors.grey,
      ),
      Time(
        nome: 'Atlético-GO',
        pontos: 47,
        brasao:
            'https://logodetimes.com/times/atletico-goianiense/logo-atletico-goianiense-256.png',
        cor: Colors.red,
      ),
      Time(
        nome: 'Sport',
        pontos: 42,
        brasao:
            'https://logodetimes.com/times/sport-recife/logo-sport-recife-256.png',
        cor: Colors.red,
      ),
      Time(
        nome: 'Bahia',
        pontos: 41,
        brasao: 'https://logodetimes.com/times/bahia/logo-bahia-256.png',
        cor: Colors.blue,
      ),
      Time(
        nome: 'Fortaleza',
        pontos: 41,
        brasao:
            'https://logodetimes.com/times/fortaleza/logo-fortaleza-256.png',
        cor: Colors.red,
      ),
      Time(
        nome: 'Vasco',
        pontos: 38,
        brasao:
            'https://logodetimes.com/times/vasco-da-gama/logo-vasco-da-gama-256.png',
        cor: Colors.grey,
      ),
      Time(
        nome: 'Goiás',
        pontos: 37,
        brasao: 'https://logodetimes.com/times/goias/logo-goias-novo-256.png',
        cor: Colors.green,
      ),
      Time(
        nome: 'Coritiba',
        pontos: 31,
        brasao: 'https://logodetimes.com/times/coritiba/logo-coritiba-5.png',
        cor: Colors.green,
      ),
      Time(
        nome: 'Botafogo',
        pontos: 27,
        brasao: 'https://logodetimes.com/times/botafogo/logo-botafogo-256.png',
        cor: Colors.grey,
      ),
    ]);
  }
}
