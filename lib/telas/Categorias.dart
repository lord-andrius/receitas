import 'package:flutter/material.dart';
import 'package:receitas/widgets/WidgetCategoria.dart';
import '../dados/dadosFalsos.dart';

class Categorias extends StatelessWidget {
  Categorias({super.key}) {}

  @override
  Widget build(BuildContext contexto) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categorias das receitas'),
      ),
      body: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 2 / 3,
          children: List<Widget>.generate(ListaCategorias.length,
              (int indice) => WidgetCategoria(ListaCategorias[indice]))),
    );
  }
}
