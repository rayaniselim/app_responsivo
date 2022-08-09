import 'package:flutter/material.dart';
//  aula 17
// Wrap - Quebra os blocos de conteúdo para a próxima linha de forma automática  de acordo com o tamanho da tela
/* 
Start - todos os componentes alinhados no começo (esquerda)
End - todos os componentes alinhados no final (direita)
Center - juntos centralizados
Space-Between - itens bem colocados nas extremidades e distribui os itens do meio
Space-Around -  itens um pouco afastado das extremidades
Space-Evenly - tem um pouco mais de espaço do que a Around nas extremidades
*/

class ResponsividadeWrap extends StatefulWidget {
  const ResponsividadeWrap({Key? key}) : super(key: key);

  @override
  State<ResponsividadeWrap> createState() => _ResponsividadeWrapState();
}

class _ResponsividadeWrapState extends State<ResponsividadeWrap> {
  @override
  Widget build(BuildContext context) {
    double largura = 100;
    double altura = 100;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text('Wrap'),
      ),
      body: Container(
        color: Colors.grey,
        width: MediaQuery.of(context).size.width,
        child: Wrap(
          alignment: WrapAlignment.center,
// coloca um espaco embaixo de cada um
          runSpacing: 10,
          spacing: 10,
          children: [
            Container(
              width: largura,
              height: altura,
              color: Colors.orange,
            ),
            Container(
              width: largura,
              height: altura,
              color: Colors.purple,
            ),
            Container(
              width: largura,
              height: altura,
              color: Colors.pink,
            ),
            Container(
              width: largura,
              height: altura,
              color: Colors.yellow,
            ),
            Container(
              width: largura,
              height: altura,
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
