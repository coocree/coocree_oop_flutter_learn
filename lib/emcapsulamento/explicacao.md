# Emcapsulamento

O encapsulamento em Flutter (e na programação orientada a objetos em geral) é um princípio que 
define que os atributos e métodos de uma classe devem ser controlados e protegidos de acessos 
externos, para que sua integridade e consistência sejam mantidas.

Isso significa que os atributos de uma classe devem ser declarados como privados (usando o 
caractere "_" antes do nome da variável) e só podem ser acessados através de métodos públicos, como 
getters e setters, que permitem definir e recuperar seus valores de maneira controlada. Dessa forma, 
o encapsulamento garante que o estado interno de um objeto não seja corrompido por acessos externos 
não autorizados ou inconsistentes.

O encapsulamento é um dos pilares da programação orientada a objetos, juntamente com a herança e 
o polimorfismo, e é essencial para garantir a modularidade, a reutilização e a manutenção do código. 
No Flutter, o encapsulamento é amplamente utilizado em classes de widgets, que são responsáveis por 
controlar e exibir a interface do usuário e seus estados internos.

## Entenda o Código

#### No arquivo class_emcapsulamento.dart temos o seguinte:

```flutter
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
```

O código apresentado é uma classe chamada Pessoa que representa uma pessoa com dois atributos 
privados: `nome` e `idade`. A classe possui um `construtor` que recebe dois parâmetros obrigatórios: 
`nome` e `idade`, e usa os valores dos parâmetros para atribuir às variáveis de instância 
correspondentes. 
Além disso, a classe possui `getters` e `setters` para as variáveis `_nome` e `_idade`, que 
permitem acessar e modificar os valores de seus atributos privaddos de maneira controlada e segura. 
Esses `getters` e `setters` são usados para proteger os atributos privados da classe de acessos 
indesejados e para validar os valores que são atribuídos a eles, permitindo, portanto, garantir 
que os valores dos atributos da classe sejam manipulados de maneira consistente e segura.

```flutter
class Funcionario extends Pessoa {
  double _salario;

  Funcionario(
      {required String nome, required int idade, required double salario})
      : _salario = salario,
        super(nome: nome, idade: idade);

  double get salario => _salario;

  set salario(double salario) => _salario = salario;
}
```

A classe Funcionario é uma extensão (herança) da classe `Pessoa` e representa um funcionário com um
atributo privado `_salario`. A classe tem um construtor que recebe três parâmetros obrigatórios: 
`nome` (uma String), `idade` (um int) e `salario` (um double), e atribui esses valores às variáveis 
de instância correspondentes. A classe também possui um `getter` e um `setter` para o atributo 
`_salario`, permitindo o acesso e a modificação controlada do valor.

#### No arquivo funcionario_card.dart temos o seguinte:

```flutter
class FuncionarioCard extends StatelessWidget {
  final Funcionario funcionario;

  FuncionarioCard(
      {required String nome, required int idade, required double salario})
      : funcionario = Funcionario(nome: nome, idade: idade, salario: salario);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Text('Nome: ${funcionario.nome}'),
            SizedBox(height: 10),
            Text('Idade: ${funcionario.idade}'),
            SizedBox(height: 10),
            Text('Salário: ${funcionario.salario}'),
          ],
        ),
      ),
    );
  }
}
```

Esse código define um componente visual chamado `FuncionarioCard` que mostra informações sobre um 
funcionário. Ele recebe três parâmetros obrigatórios: `nome`, `idade` e `salário`. O construtor 
cria um novo objeto Funcionario com esses valores e o armazena na propriedade funcionario. 
O método `build` renderiza um Card com o `nome`, `idade` e `salário` do funcionário. 
Cada informação é exibida em um `Text widget` dentro de uma `Column`. O `SizedBox` é usado para 
adicionar espaço entre as informações.

#### No arquivo pessoa_card.dart temos o seguinte:

```flutter
class PessoaCard extends StatelessWidget {
  final Pessoa pessoa;

  PessoaCard({required String nome, required int idade})
      : pessoa = Pessoa(nome: nome, idade: idade);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Text('Nome: ${pessoa.nome}'),
            SizedBox(height: 10),
            Text('Idade: ${pessoa.idade}'),
          ],
        ),
      ),
    );
  }
}
```

Este é um código em Flutter que define um `widget` de cartão de uma pessoa com `nome` e `idade`. 
A classe `PessoaCard` é um widget que recebe os parâmetros `nome` e `idade` ao ser construído, 
cria um objeto `Pessoa` com esses parâmetros e, em seguida, renderiza um cartão que mostra o `nome` 
e a `idade` da pessoa. É importante ressaltar que essa classe é uma extensão da classe 
StatelessWidget do Flutter.

```flutter
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Encapsulation Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Encapsulation Demo'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Exemplo de encapsulamento',
              ),
              SizedBox(height: 20),
              Text(
                'Pessoa: ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              PessoaCard(
                nome: 'Fulano',
                idade: 30,
              ),
              SizedBox(height: 20),
              Text(
                'Funcionário: ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              FuncionarioCard(
                nome: 'Beltrano',
                idade: 40,
                salario: 5000,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
```

O código define um aplicativo Flutter que demonstra encapsulamento usando duas classes, 
`Pessoa` e `Funcionario`, que são renderizadas em dois cartões usando as classes `PessoaCard` e 
`FuncionarioCard`. O aplicativo é iniciado com `runApp(MyApp())` que retorna um MaterialApp 
contendo um `Scaffold` com um `AppBar` e um corpo contendo uma coluna com vários `widgets`, 
incluindo os dois cartões. O código é executado no método `main()`.