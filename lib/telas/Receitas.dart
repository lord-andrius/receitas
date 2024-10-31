import 'package:flutter/material.dart';
import 'package:receitas/modelos/Receita.dart';
import 'package:receitas/modelos/Categoria.dart';
import 'package:receitas/dados/dadosFalsos.dart';
import 'package:receitas/widgets/WidgetReceita.dart';

class Receitas extends StatelessWidget {
  late final Categoria categoria;
  Receitas({required this.categoria, super.key}) {}

  @override
  Widget build(BuildContext contexto) {

    List<WidgetReceita> receitas = [];

    ListaReceitas.forEach((receita) => {
      if(receita.categorias.contains(this.categoria.id)) {
        receitas.add(WidgetReceita(receita:receita))
      }
    });
    
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
