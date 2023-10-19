import 'package:flutter/material.dart';
import '../componentes/categoria_item.dart';
import '../data/mock_data.dart';

class TelaCategorias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cardápio Cefet 2023"),
        backgroundColor: Colors.blueGrey,
      ),
      body: GridView(
        padding: const EdgeInsets.all(25),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200, //cada elemento tem a extensão de 200x
          childAspectRatio: 3 / 2, //proporção de elementos na tela
          crossAxisSpacing: 20, //espaçamento de eixo
          mainAxisSpacing: 20, //espaçamento entre elementos
        ),
        children: mockCategories.map((categoria) {
          return CategoriaItem(categoria);
        }).toList(),
      ),
    );
  }
}
