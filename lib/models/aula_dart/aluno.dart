import '/models/aula_dart/pessoa.dart';

class Aluno extends Pessoa {
  String ra;
  Aluno({required this.ra, required String nome, required String sobrenome})
      : super(nome, sobrenome);
}
