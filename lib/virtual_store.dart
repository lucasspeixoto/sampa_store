import 'package:flutter/material.dart';
import 'package:flutter_responsive/widgets/mobile_app_bar.dart';
import 'package:flutter_responsive/widgets/product_card.dart';
import 'package:flutter_responsive/widgets/web_app_bar.dart';

class VirtualStore extends StatefulWidget {
  const VirtualStore({Key? key}) : super(key: key);

  @override
  State<VirtualStore> createState() => _VirtualStoreState();
}

class _VirtualStoreState extends State<VirtualStore> {
  updateView(double screenWidth) {
    int columns = 2;

    if (screenWidth <= 600) {
      columns = 2;
    } else if (screenWidth <= 960) {
      columns = 4;
    } else {
      columns = 6;
    }

    return columns;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        var maxWidth = constraint.maxWidth;
        var barHeight = AppBar().preferredSize.height;

        return Scaffold(
          appBar: maxWidth < 600
              ? PreferredSize(
                  child: const MobileAppBar(),
                  preferredSize: Size(
                    maxWidth,
                    barHeight,
                  ),
                )
              : PreferredSize(
                  child: const WebAppBar(),
                  preferredSize: Size(
                    maxWidth,
                    barHeight,
                  ),
                ),
          body: Padding(
            padding: const EdgeInsets.all(16),
            child: GridView.count(
              crossAxisCount: updateView(maxWidth),
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              children: const [
                ProductCard(
                    description: 'Kit Multimídia',
                    price: '2200.00',
                    image: 'p1.jpg'),
                ProductCard(
                    description: 'Pneu Goodyear aro 16',
                    price: '800.00',
                    image: 'p2.jpg'),
                ProductCard(
                    description: 'Samsung 8',
                    price: '4100.00',
                    image: 'p4.jpg'),
                ProductCard(
                    description: 'Samsung Edge',
                    price: '2150.99',
                    image: 'p4.jpg'),
                ProductCard(
                    description: 'Galaxy 10',
                    price: '6200.00',
                    image: 'p5.jpg'),
                ProductCard(
                    description: 'Iphone 13',
                    price: '11900.50',
                    image: 'p6.jpg'),
              ],
            ),
          ),
        );
      },
    );
  }
}
