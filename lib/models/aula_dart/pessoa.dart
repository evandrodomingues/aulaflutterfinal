abstract class Pessoa {
  String nome;
  String sobrenome;

  Pessoa(this.nome, this.sobrenome);

  nomeCompleto() {
    return '$nome $sobrenome';
  }
}
