import 'package:flutter/material.dart';
import 'package:../modelos/Receita.dart';
import 'package:../modelos/Categoria.dart';
import 'package:../dados/dadosFalsos.dart';
import 'package:../widgets/WidgetReceita.dart';

class Receitas extends StatelessWidget {
  final Categoria categoria;
  Receitas({this.categoria, super.key}) {}

  @override
  Widget build(BuildContext contexto) {

    List<WidgetReceita> receitas = List<WidgetReceita>.generate(ListaReceitas.length, (int indice) => WidgetReceita(receita: ListaReceitas[indice]));
    late Widget conteudo;

    if(receitas.length < 1) {
      conteudo = Center(
        child: Column(
            children: [
              Text('Não há nenhuma receita nessa categoria ainda.'),
              Text('Por favor dê uma olhada em outras categorias.'),
            ],
        ),
      );
    } else {
      conteudo = Center(
        child: Column(
          children: receitas,
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(categoria.nome),
      ),
      body: conteudo,
    );
    
  }
}
