import 'package:flutter/material.dart';
import 'package:receitas/widgets/WidgetCategoria.dart';
import '../dados/dadosFalsos.dart';
import '../modelos/Categoria.dart';

class Categorias extends StatelessWidget {
  late 
  Categorias({super.key}) {}

  void categoriaClique(Categoria categoria) {
    
  }

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
                (int indice) => WidgetCategoria(ListaCategorias[indice], categoriaClique)),
          ),
        ),
    );
  }
}
