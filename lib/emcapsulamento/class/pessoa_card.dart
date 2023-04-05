import 'package:flutter/material.dart';
import 'class_emcapsulamento.dart';

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