import 'package:flutter/material.dart';

class ResponsividadeMediaQuery extends StatefulWidget {
  const ResponsividadeMediaQuery({Key? key}) : super(key: key);

  @override
  _ResponsividadeMediaQueryState createState() =>
      _ResponsividadeMediaQueryState();
}

class _ResponsividadeMediaQueryState extends State<ResponsividadeMediaQuery> {
  @override
  Widget build(BuildContext context) {
// vai pegar a largura total do dispositivo
    var largura = MediaQuery.of(context).size.width;
// vai pegar a altura total do dispositivo
    var altura = MediaQuery.of(context).size.height;
// captura a altura da barra de status do celular
    var alturaBarraStatus = MediaQuery.of(context).padding.top;
// desconsidera a altura da appbar
    var alturaAppBar = AppBar().preferredSize.height;
    var larguraItem = largura / 3;

    return Scaffold(
      /*appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('Responsividade'),
      ),*/
      /*quando for usar 2 containers */
      body: Row(
        //    body: Column(
        children: [
          Container(
// de acordo com a porcentagem > width: largura * 0.70,
            width: larguraItem,
            height: 300,
            color: Colors.amber,
            child: const Text('Responsividade'),
          ),
          Container(
            width: larguraItem,
            height: 500,
            color: Colors.amber,
            child: const Text('Responsividade'),
          ),
          Container(
            width: larguraItem,
            height: altura - alturaAppBar - alturaBarraStatus,
            color: Colors.amber,
            child: const Text('Responsividade'),
          ),
        ],
      ),
    );
  }
}
