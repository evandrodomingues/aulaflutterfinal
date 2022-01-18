// ignore_for_file: unused_local_variable

import 'package:aulaflutterfinal/classes/aluno.dart';
import 'package:aulaflutterfinal/classes/boletim.dart';
import 'package:aulaflutterfinal/classes/diciplina.dart';
import 'package:aulaflutterfinal/classes/professor.dart';

void main() {
  var boletim = Boletin(
    aluno: Aluno(
      nome: 'Evandro',
      sobrenome: 'Domingues',
      ra: '123456',
    ),
    diciplinas: [
      Diciplina(
        nome: 'Flutter Basico',
        professor: Professor(
          'Diego',
          'Antunes',
        ),
        nota: 96.2,
        frequencia: 10.0,
      ),
      Diciplina(
        nome: 'Flutter Intermediario',
        professor: Professor(
          'Diversos',
          'Udemy',
        ),
        nota: 81.9,
        frequencia: 10.0,
      ),
      Diciplina(
        nome: 'VSCode',
        professor: Professor(
          'Leonardo',
          'Leitao',
        ),
        nota: 84.7,
        frequencia: 10.0,
      ),
      Diciplina(
        nome: 'Programação WEB',
        professor: Professor(
          'Jamilton',
          'Damasceno',
        ),
        nota: 87.3,
        frequencia: 10.0,
      ),
      Diciplina(
        nome: 'Dart',
        professor: Professor(
          'Diego',
          'Antunes',
        ),
        nota: 80.0,
        frequencia: 10.0,
      ),
    ],
  );
}
