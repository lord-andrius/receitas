import 'package:flutter/material.dart';
import 'package:../modelos/Receita.dart';

class WidgetReceita extends StatelessWidget {
  final Receita receita;
  WidgetReceita({required this.receita, this.super.key}) {}

  @override
  Widget build(BuildContex contexto) {
    return Text(this.receita.titulo),
  }
}
