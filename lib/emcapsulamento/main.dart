import 'package:flutter/material.dart';
import 'class/funcionario_card.dart';
import 'class/pessoa_card.dart';

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




