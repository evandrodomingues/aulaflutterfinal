// ignore_for_file: unused_import

import '/models/time.dart';
import '/models/titulo.dart';
import '/repositories/home_repository.dart';

class HomeController {
  late TimeRepository timeRepository;

  List<Time> get tabela => timeRepository.times;

  HomeController() {
    timeRepository = TimeRepository();
  }
}
