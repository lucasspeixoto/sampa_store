import 'package:flutter/material.dart';

class ResponsiveOrientation extends StatefulWidget {
  const ResponsiveOrientation({Key? key}) : super(key: key);

  @override
  State<ResponsiveOrientation> createState() => _ResponsiveOrientationState();
}

class _ResponsiveOrientationState extends State<ResponsiveOrientation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsividade Orientation Builder'),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return GridView.count(
              crossAxisCount: orientation == Orientation.portrait ? 2 : 4,
              children: [
                Container(color: Colors.red),
                Container(color: Colors.purple),
                Container(color: Colors.grey),
                Container(color: Colors.yellow),
                Container(color: Colors.black),
                Container(color: Colors.orange),
              ]);
        },
      ),
    );
  }
}
