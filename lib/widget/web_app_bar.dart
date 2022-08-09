import 'package:flutter/material.dart';

// TELA WEB
class WebAppBar extends StatefulWidget {
  const WebAppBar({Key? key}) : super(key: key);

  @override
  State<WebAppBar> createState() => _WebAppBarState();
}

class _WebAppBarState extends State<WebAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.red.shade100,
      title: SizedBox(
        child: Row(
          // mainAxisSize: MainAxisSize.max,
          children: [
            Image.asset(
              'assets/images/logo6.png',
              fit: BoxFit.contain,
              width: MediaQuery.of(context).size.width /
                  8.9, //esse método retorna a largura total da página
            ),
            Expanded(child: Container()),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
              color: Colors.red[300],
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_cart_rounded),
              color: Colors.red[300],
            ),
            const SizedBox(
              width: 10,
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text('Cadastrar'),
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.red.shade300,
                primary: Colors.white,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text('Entrar'),
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.red.shade300,
                primary: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
