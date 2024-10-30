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
      titulo: 'Hamburger',
      urlDaImagem: 'https://images.pexels.com/photos/1639557/pexels-photo-1639557.jpeg',
      ingredientes: ['Pão', 'Carne', 'Quijo', 'sal', 'pimenta', 'manteiga'],
      passos: [
        'Corte o pão ao meio',
        'Passe a manteiga nas duas fatias do pão',
        'Leve o pão para tostar na chapa',
        'Modele a carne no formato de hamburger',
        'Tempere a carne com sal e pimenta a gosto',
        'Ponha a carne na chapa',
        'Vire a carne quando se passar um minuto e meio',
        'Adicione queijo ao hamburger',
        'Espere mais 1 minuto e meio',
        'Retire a carne da chapa e monte o hamburger',
      ],
      duracao: 10,
      complexidade: Complexidade.simples,
      custo: Custo.caro,
    ),

];
