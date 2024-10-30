import 'package:flutter/material.dart';
import 'package:receitas/modelos/Categoria.dart';
import 'package:receitas/modelos/Receita.dart';

final List<Categoria> ListaCategorias = [
  Categoria(
    0,
    'Italiana',
    Colors.red,
  ),
  Categoria(
    1,
    'Asiática',
    Colors.purple,
  ),
  Categoria(
    2,
    'Árabe',
    Colors.green,
  ),
  Categoria(
    3,
    'Americana',
    Colors.blue
  ),
];

final List<Receita> ListaReceitas = [
    Receita(
      id: 0,
      categorias: [3],
    ),

];