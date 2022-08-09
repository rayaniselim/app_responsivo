import 'package:flutter/material.dart';

// aula 24
class DiferentesTamanhos extends StatefulWidget {
  const DiferentesTamanhos({Key? key}) : super(key: key);

  @override
  State<DiferentesTamanhos> createState() => _DiferentesTamanhosState();
}

class _DiferentesTamanhosState extends State<DiferentesTamanhos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TDiferentes Tamanhos'),
      ),
// MAIS FACIL, ambas ficam da mesma altura
// OU IntrinsicWidht para  a mesma largura
      body: IntrinsicHeight(
        child: Row(
// se usar o cross sem o IntrinsicHeight ele vai ficar com a altura total
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: 200,
              color: Colors.amber,
              child: Text('Item 1'),
            ),
            Container(
              width: 200,
              color: Colors.pink,
              child: Text('Item 2, kkkkkkkkkkkkkkkkkkkkkkkk'),
            ),
          ],
        ),
// OU
        // body: Row(
        // children: [
        //   Container(
        //     width: 200,
        //     color: Colors.amber,
        //     child: Text('Item 1'),
        //   ),
        //   Container(
        //     width: 200,
        //     color: Colors.pink,
        //     child: Text('Item 2, kkkkkkkkkkkkkkkkkkkkkkkk'),
        //   ),
        // ],
      ),
    );
  }
}
