import 'package:flutter/material.dart';
import 'package:receitas/modelos/Categoria.dart';
import 'package:receitas/telas/Receitas.dart';

class WidgetCategoria extends StatelessWidget {
  late final Categoria categoria;
  WidgetCategoria(Categoria categoria,  {super.key}) {
    this.categoria = categoria;
  }


  @override
  Widget build(BuildContext contexto) {
    return InkWell(
      borderRadius: BorderRadius.circular(5),
      onTap: () => {
        Navigator.push(
          contexto,
          MaterialPageRoute(
            builder: (c) => Receitas(categoria: this.categoria),
          ),
        )
      },
      child: Ink(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: categoria.cor
          ),
        child: Center(child: Text(categoria.nome)),
      ),
    );
  }
}
