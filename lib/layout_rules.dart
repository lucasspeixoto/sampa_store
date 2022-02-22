import 'package:flutter/material.dart';

class LayoutRules extends StatefulWidget {
  const LayoutRules({Key? key}) : super(key: key);

  @override
  State<LayoutRules> createState() => _LayoutRulesState();
}

class _LayoutRulesState extends State<LayoutRules> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layout Builder'),
      ),
      body: Container(
        color: Colors.red,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: LayoutBuilder(
          builder: (context, constraint) {
            var width = constraint.maxWidth;
            debugPrint('Largura: $width');

            if (width < 600) {
              //Celular
              return const Text(
                'Celular',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              );
            } else if (width < 960) {
              return const Text(
                'Tablets',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              );
            } else {
              return const Text(
                'Notebooks',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
