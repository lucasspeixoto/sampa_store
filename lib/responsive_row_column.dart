import 'package:flutter/material.dart';

class ResponsiveRowColumn extends StatefulWidget {
  const ResponsiveRowColumn({Key? key}) : super(key: key);

  @override
  State<ResponsiveRowColumn> createState() => _ResponsiveRowColumnState();
}

class _ResponsiveRowColumnState extends State<ResponsiveRowColumn> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
        appBar: AppBar(
          title: const Text('Responsividade Row and Column'),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.green,
                height: 200,
              ),
            ),
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.black,
                      height: 200,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.cyan,
                      height: 200,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.purple,
                      height: 200,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.red,
                height: 200,
              ),
            )
          ],
        ));
  }
}
