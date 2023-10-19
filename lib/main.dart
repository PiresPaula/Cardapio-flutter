import 'package:cardapio/data/mock_produtos.dart';
import 'package:cardapio/telas/tela_categorias.dart';
import 'package:cardapio/telas/tela_produtos.dart';
import 'package:flutter/material.dart';
import 'package:cardapio/models/produtos.dart';
import 'utils/rotas.dart';
void main() {
  runApp(AppCardapio());
}

class AppCardapio extends StatelessWidget {
  List<Produto> produtosValidos = dummyProdutos;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Cardápio",
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        fontFamily: 'Schyler',
        textTheme: ThemeData.light().textTheme.copyWith(
          titleSmall: const TextStyle(
            fontSize: 20,
            fontFamily: 'Schyler'
          )
        )
      ),
      //home: TelaCategorias(),
       routes: {
        Rotas.HOME: (context) => TelaCategorias(),
        Rotas.PRODUTOS: (context) => TelaProdutos(produtosValidos),
      }
    );
  }
}



