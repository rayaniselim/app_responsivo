import 'package:flutter/material.dart';

// aula 23 - FractionallySizedBox
class TamanhoProporcional extends StatefulWidget {
  const TamanhoProporcional({Key? key}) : super(key: key);

  @override
  State<TamanhoProporcional> createState() => _TamanhoProporcionalState();
}

class _TamanhoProporcionalState extends State<TamanhoProporcional> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tamanhos Proporcionais'),
      ),
      body: Container(
        color: Colors.amber,
        // FractionallySizedBox nao consegue usar em Column ou ROW(linhas)
//         child: const FractionallySizedBox(
//   Assim nao precisa utilizar o MediaQuery, define de maneira mais simples
//           widthFactor: 0.50, // 50% largura total
//           heightFactor: 0.50, // altura total
//           alignment: Alignment.topLeft,
//           child: Text('Tamanho Proporcional'),

// OU - dentro de um Flexible

        child: Column(
          children: const [
            Flexible(
              child: FractionallySizedBox(
                // Assim nao precisa utilizar o MediaQuery,
                widthFactor: 0.50, // 50% largura total
                heightFactor: 0.50, // altura total
                alignment: Alignment.topLeft,
                child: Text('Tamanho Proporcional'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
