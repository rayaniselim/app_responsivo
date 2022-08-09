import 'package:flutter/material.dart';

// AULA 18
class Orientacao extends StatefulWidget {
  const Orientacao({Key? key}) : super(key: key);

  @override
  State<Orientacao> createState() => _OrientacaoState();
}

class _OrientacaoState extends State<Orientacao> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text('Orientacao'),
      ),
      body: OrientationBuilder(
        builder: (context, orientacao) {
          /*return Container(
// portrait - quando o celu esta em pé
//landscape - quando esta deitado
            child: orientacao == Orientation.portrait
                ? Text('Portraint')
                : Text('Landscape'),
          );*/

          return GridView.count(
            crossAxisCount: orientacao == Orientation.portrait ? 2 : 4,
            children: [
              Container(
                color: Colors.amber,
              ),
              Container(
                color: Colors.pink,
              ),
              Container(
                color: Colors.green,
              ),
              Container(
                color: Colors.orange,
              ),
              Container(
                color: Colors.purple,
              ),
              Container(
                color: Colors.blueGrey,
              ),
            ],
          );
        },
      ),
    );
  }
}
