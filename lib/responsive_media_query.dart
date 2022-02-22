import 'package:flutter/material.dart';

class ResponsiveMediaQuery extends StatefulWidget {
  const ResponsiveMediaQuery({Key? key}) : super(key: key);

  @override
  State<ResponsiveMediaQuery> createState() => _ResponsiveMediaQueryState();
}

class _ResponsiveMediaQueryState extends State<ResponsiveMediaQuery> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    var statusBarHeight = MediaQuery.of(context).padding.top;
    var appBarHeight = AppBar().preferredSize.height;
    /* var itemWidth = width * 0.25; */
    var itemWidth = width / 3;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsividade Media Query'),
      ),
      body: Row(
        children: [
          Container(
            width: itemWidth,
            height: 150,
            color: Colors.green,
            child: const Text('Container'),
          ),
          Container(
            width: itemWidth,
            height: 150,
            color: Colors.red,
            child: const Text('Container'),
          ),
          Container(
            width: itemWidth,
            height: 150,
            color: Colors.yellow,
            child: const Text('Container'),
          ),
        ],
      ),
    );
  }
}
