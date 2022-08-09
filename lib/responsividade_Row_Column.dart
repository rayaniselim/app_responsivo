import 'package:flutter/material.dart';

// RESPONSIVIDADE COM LINHAS E COLUNAS , AULA 16

class ResponsividadeRowCol extends StatefulWidget {
  const ResponsividadeRowCol({Key? key}) : super(key: key);

  @override
  State<ResponsividadeRowCol> createState() => _ResponsividadeRowColState();
}

class _ResponsividadeRowColState extends State<ResponsividadeRowCol> {
  @override
  Widget build(BuildContext context) {
    var largura = MediaQuery.of(context).size.width;
    var altura = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('Responsividade'),
      ),

// com a ROW a coluna fica uma do lado da outra na vertical
      // body: Row (
      body: Column(
        children: [
          /* Container(
            color: Colors.pink,
            height: 200,
            // width: ,
          ),*/

// OCUPA O ESPACO DISPONIVEL DA TELA
          Expanded(
// flex - ajuda a ajustar o tamanho sem precisar fazer width: largura * 0.70,
            flex: 2,
            child: Container(
              color: Colors.orange,
            ),
          ),

// 1 ROW com 3 Expends
          Expanded(
            flex: 6,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.pink,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.red,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.purple,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.amber,
            ),
          ),
        ],
      ),
    );
  }
}
