import 'package:aulaflutterfinal/classes/professor.dart';

class Diciplina {
  String nome;
  Professor professor;
  double nota;
  double frequencia;

  Diciplina({
    required this.nome,
    required this.professor,
    required this.nota,
    required this.frequencia,
  });
}
