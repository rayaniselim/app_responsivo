import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

// aula 22, textos responsivos
class TamanhoTextos extends StatefulWidget {
  const TamanhoTextos({Key? key}) : super(key: key);

  @override
  State<TamanhoTextos> createState() => _TamanhoTextosState();
}

class _TamanhoTextosState extends State<TamanhoTextos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tamanho de Textos'),
      ),
      body: Column(
        children: const [
          Text(
            'Olá Jamilto, tudo certo. A legal, obrigado. Outra dúvida, notei que depois de logado, se dar um'
            ' refresh na página volta para o login, ja trabalhei com firebase em apps feitos em Angular e React e'
            ' no inicio sofri com isso. No flutter, qual seria a melhor forma de se fazer ? Seria necessário alguma ferramenta de gestão de estado para isso ?',
            style: TextStyle(fontSize: 30),
          ),
          SizedBox(
            height: 50,
          ),
          AutoSizeText(
            'Olá Jamilto, tudo certo. A legal, obrigado. Outra dúvida, notei que depois de logado, se dar um'
            ' refresh na página volta para o login, ja trabalhei com firebase em apps feitos em Angular e React e'
            ' no inicio sofri com isso. No flutter, qual seria a melhor forma de se fazer ? Seria necessário alguma ferramenta de gestão de estado para isso ?',
            style: TextStyle(fontSize: 30),

            // maxLines: 2, // 2 linhas pro texto
            //minFontSize: 14, // abaixo desse tamanho nao mostra mais
            //overflow: TextOverflow.ellipsis, // ... vai indicar que tem mais texto
            // overflowReplacement: Text('Nao coube!'), //indica quando o texto nao vai caber no espaco

            //  minFontSize: 10,
            // maxLines: 2,
            //stepGranularity: 10, // ele vai reduzindo de 10 em 10 para caber
            maxLines: 3,
            presetFontSizes: [30, 22, 10], // difene quais fontes vc quer
          ),
        ],
      ),
    );
  }
}
