import 'package:flutter/material.dart';

class ResponsiveWrap extends StatefulWidget {
  const ResponsiveWrap({Key? key}) : super(key: key);

  @override
  State<ResponsiveWrap> createState() => _ResponsiveWrapState();
}

class _ResponsiveWrapState extends State<ResponsiveWrap> {
  @override
  Widget build(BuildContext context) {
    var width = 100.0;
    var height = 100.0;

    return Scaffold(
        appBar: AppBar(
          title: const Text('Responsividade Wrap'),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.grey,
          child: Wrap(
            alignment: WrapAlignment.center,
            spacing: 10,
            runSpacing: 10,
            children: [
              Container(
                width: width,
                height: height,
                color: Colors.black,
              ),
              Container(
                width: width,
                height: height,
                color: Colors.orange,
              ),
              Container(
                width: width,
                height: height,
                color: Colors.purple,
              ),
              Container(
                width: width,
                height: height,
                color: Colors.yellow,
              ),
              Container(
                width: width,
                height: height,
                color: Colors.red,
              ),
            ],
          ),
        ));
  }
}
