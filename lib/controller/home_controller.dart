// ignore_for_file: unused_import

import '/models/time.dart';
import '/models/titulo.dart';
import '../repositories/times_repository.dart';

class HomeController {
  late TimesRepository timeRepository;

  List<Time> get tabela => timeRepository.times;

  HomeController() {
    timeRepository = TimesRepository();
  }
}
