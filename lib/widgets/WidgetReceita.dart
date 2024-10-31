import 'package:flutter/material.dart';
import 'package:receitas/modelos/Receita.dart';

class WidgetReceita extends StatelessWidget {
  final Receita receita;
  WidgetReceita({required this.receita, super.key}) {}

  @override
  Widget build(BuildContext contexto) {
    return Text(this.receita.titulo);
  }
}
