class Contato {
  final String nome;
  final int? numConta;

  Contato(this.nome, this.numConta);

  @override
  String toString() {
    // TODO: implement toString
    return 'Contato{nome : $nome, numConta: $numConta}';
  }
}
