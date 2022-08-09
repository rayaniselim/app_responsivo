import 'package:app_responsivo/widget/item_produto.dart';
import 'package:app_responsivo/widget/mobile_app_bar.dart';
import 'package:app_responsivo/widget/web_app_bar.dart';
import 'package:flutter/material.dart';

class LojaVirtual extends StatefulWidget {
  const LojaVirtual({Key? key}) : super(key: key);

  @override
  State<LojaVirtual> createState() => _LojaVirtualState();
}

class _LojaVirtualState extends State<LojaVirtual> {
  _ajustarVisualizacao(
    double larguraTela,
  ) {
    int colunas = 2;
    if (larguraTela <= 600) {
      colunas = 2;
    } else if (larguraTela <= 960) {
      colunas = 4;
    } else {
      colunas = 6;
    }
    return colunas;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        var largura = constraints.maxWidth;
        var alturaBarra = AppBar().preferredSize.height;

        return Scaffold(
          appBar: largura < 600
              ? PreferredSize(
                  child: const MobileAppBar(),
                  preferredSize: Size(largura, alturaBarra),
                )
              : PreferredSize(
                  child: const WebAppBar(),
                  preferredSize: Size(largura, alturaBarra),
                ),
// espaco branco nas laterais
          body: Padding(
            padding: const EdgeInsets.all(16),
            child: GridView.count(
              crossAxisCount: _ajustarVisualizacao(largura), //coluna
              crossAxisSpacing: 8, // espacos
              mainAxisSpacing: 8, // espacos
              children: [
                ItemProduto("Sorvete de Morango", "12.00", "morango.png"),
                ItemProduto("Sorvete de Limao", "10.00", "limao.png"),
                ItemProduto(
                    "Sorvete de Blueberries", "14.00", "blueberries.png"),
                ItemProduto("Sorvete de Chocolate", "12.00", "chocolate.png"),
                ItemProduto("Sorvete de Baunilha", "12.00", "baunilha.png"),
                ItemProduto("Sorvete de Flor de Morango", "12.00", "flor.png"),
                ItemProduto("Sorvete de Cheesecake de Frutas Vermelhas",
                    "14.00", "cheesecake.png"),
                ItemProduto(
                    "Sorvete de Mousse de Maracujá", "14.00", "maracuja.png"),
                ItemProduto("Sorvete de Bolo de Cenoura com Chocolate", "13.00",
                    "cenoura.png"),
                ItemProduto("Sorvete de Amora", "13.00", "amora.png"),
                ItemProduto("Sorvete de Brigadeiro", "12.00", "brigadeiro.png"),
                ItemProduto("Sorvete de Cookies", "14.00", "cokies.png"),
              ],
            ),
          ),
        );
      },
    );
  }
}
