import 'package:flutter/material.dart';

class Categoria {
  late int id;
  late String nome;
  late Color cor;

  Categoria(int id, String nome, Color cor) {
    this.id = id;
    this.nome = nome;
    this.cor = cor;
  }
}
