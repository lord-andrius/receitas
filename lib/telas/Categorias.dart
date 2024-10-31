import 'package:flutter/material.dart';
import 'package:receitas/widgets/WidgetCategoria.dart';
import 'package:receitas/dados/dadosFalsos.dart';
import 'package:receitas/modelos/Categoria.dart';

class Categorias extends StatelessWidget {
  Categorias({super.key}) {}


  @override
  Widget build(BuildContext contexto) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categorias das receitas'),
      ),
      body: Container(
          margin: EdgeInsets.all(5.0),
          child: GridView.count(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            children: List<Widget>.generate(ListaCategorias.length,
                (int indice) => WidgetCategoria(ListaCategorias[indice])),
          ),
        ),
    );
  }
}
