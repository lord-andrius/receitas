import 'package:flutter/material.dart';
import 'package:receitas/modelos/Categoria.dart';

class WidgetCategoria extends StatelessWidget {
  late final Categoria categoria;

  WidgetCategoria(Categoria categoria, {super.key}) {
    this.categoria = categoria;
  }

  void quandoClicar() {
    print('Cliqui na categoria: ${categoria.nome}');
  }

  @override
  Widget build(BuildContext contexto) {
    return InkWell(
      radius: .5,
      onTap: quandoClicar,
      child: Ink(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5), color: categoria.cor),
        child: Center(child: Text(categoria.nome)),
      ),
    );
  }
}
