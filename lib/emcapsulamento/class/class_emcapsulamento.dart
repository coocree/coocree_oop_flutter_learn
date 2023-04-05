class Pessoa {
  String _nome;
  int _idade;

  Pessoa({required String nome, required int idade})
      : _nome = nome,
        _idade = idade;


  String get nome => _nome;

  int get idade => _idade;

  set nome(String nome) => _nome = nome;

  set idade(int idade) => _idade = idade;

}

class Funcionario extends Pessoa {
  double _salario;

  Funcionario(
      {required String nome, required int idade, required double salario})
      : _salario = salario,
        super(nome: nome, idade: idade);

  double get salario => _salario;

  set salario(double salario) => _salario = salario;
}
