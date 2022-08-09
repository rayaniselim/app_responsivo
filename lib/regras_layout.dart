import 'package:flutter/material.dart';

// aula 19
class RegrasLayout extends StatefulWidget {
  const RegrasLayout({Key? key}) : super(key: key);

  @override
  State<RegrasLayout> createState() => _RegrasLayoutState();
}

class _RegrasLayoutState extends State<RegrasLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layout Builder'),
      ),
      body: Container(
// isso define q vai crescer de acordo com o espaco disponivel
// e sem isso, ele vai usar só o espaco q seu conteudo ocupa
        width: MediaQuery.of(context).size.width,
        // width: 300,
        height: MediaQuery.of(context).size.height,
        color: Colors.green,
        child: LayoutBuilder(
// LayoutBuilder - pega o tamanho disponivel no componente Widgth que ele esta dentro
          builder: (context, constraints) {
// O Container se adapta ao conteudo, seguindo a linha de raciocinio acima
// maxWidth - pega a largura maxima
            var largura = constraints.maxWidth;
            print("Largura: $largura");

            if (largura < 600) {
              // celular tela pequena
              return const Text('Celular');
            } else if (largura < 960) {
              // celular maior e tablet
              return const Text('Celulares & tablets');
            } else {
              return const Text('Telas maiores');
            }
            /*return Container(
              child: Text('Teste'),
            );*/
          },
        ),
      ),
    );
  }
}
