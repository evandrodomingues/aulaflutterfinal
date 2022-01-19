import 'aluno.dart';
import 'diciplina.dart';

class Boletin {
  Aluno aluno;
  List<Diciplina> diciplinas;

  Boletin({
    required this.aluno,
    required this.diciplinas,
  });
}
