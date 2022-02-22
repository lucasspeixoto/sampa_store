import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String? description;
  final String? price;
  final String? image;

  const ProductCard({
    this.description,
    this.price,
    this.image,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey),
        color: Colors.white,
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Expanded(
            flex: 8,
            child: Image.asset(
              'assets/images/$image',
              fit: BoxFit.contain,
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: Text('$description'),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: Text(
                'R\$ $price',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
