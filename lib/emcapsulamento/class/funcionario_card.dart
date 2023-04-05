import 'package:flutter/material.dart';
import 'class_emcapsulamento.dart';

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