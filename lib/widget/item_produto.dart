import 'package:flutter/material.dart';

// AULA 21
class ItemProduto extends StatelessWidget {
  String descricao;
  String preco;
  String imagem;

  ItemProduto(this.descricao, this.preco, this.imagem, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.red.shade100),
        color: Colors.white,
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            flex: 8, //proporcao
            child: Image.asset(
              "assets/images/${imagem}",
              fit: BoxFit.contain,
            ),
          ),
          Expanded(
              flex: 3,
              child: Text(
                descricao,
                textAlign: TextAlign.center,
              )),
          Expanded(
            flex: 1,
            child: Text(''),
          ),
          Expanded(
            flex: 2,
            child: Text(
              'R\$ ${preco}',
              style: const TextStyle(fontWeight: FontWeight.normal),
            ),
          ),
        ],
      ),
    );
  }
}
