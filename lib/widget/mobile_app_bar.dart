import 'package:flutter/material.dart';

class MobileAppBar extends StatefulWidget {
  const MobileAppBar({Key? key}) : super(key: key);

  @override
  State<MobileAppBar> createState() => _MobileAppBarState();
}

class _MobileAppBarState extends State<MobileAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.red.shade100,
      title: Image.asset(
        "assets/images/logo6.png",
        fit: BoxFit.contain,
        width: MediaQuery.of(context).size.width /
            2.2, //esse método retorna a largura total da página
      ),
      actions: [
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
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.more_vert,
          ),
          color: Colors.red[300],
        ),
      ],
    );
  }
}
