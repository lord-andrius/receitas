enum Complexidade {
  simples,
  desafiador,
  dificil,
}

enum Custo {
  baixo,
  caro,
  luxuoso
}

class Receita {
  final int id;
  final List<int> categorias;
  final String titulo;
  final String urlDaImagem;
  final List<String> ingredientes;
  final List<String> passos;
  final int duracao;
  final Complexidade complexidade;
  final Custo custo;

  const Receita({
    required this.id,
    required this.categorias,
    required this.titulo,
    required this.urlDaImagem,
    required this.ingredientes,
    required this.passos,
    required this.duracao,
    required this.complexidade,
    required this.custo
  });
}