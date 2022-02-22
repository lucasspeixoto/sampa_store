import 'package:flutter/material.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          Image.asset(
            'assets/images/logo.png',
            fit: BoxFit.contain,
          ),
          Expanded(child: Container()),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_rounded),
          ),
          const SizedBox(
            width: 10,
          ),
          OutlinedButton(
            child: const Text('Cadastrar'),
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.lightBlueAccent,
              primary: Colors.white,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          OutlinedButton(
            child: const Text('Entrar'),
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.orange,
              primary: Colors.white,
            ),
          ),
          /* Padding(
            padding: const EdgeInsets.all(4),
            child: OutlinedButton(
              child: const Text('Cadastrar'),
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.lightBlueAccent,
                  primary: Colors.white,),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4),
            child: OutlinedButton(
              child: const Text('Entrar'),
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.orange, primary: Colors.white,),
            ),
          ), */
        ],
      ),
    );
  }
}
