import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final Product product;

  const ProductItem({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.network(product.image),
          Text(product.name),
          Text('\$${product.price.toString()}'),
          Row(
            children: [
              const Icon(Icons.star, color: Colors.yellow),
              Text(product.rating.toString()),
            ],
          ),
        ],
      ),
    );
  }
}

class Product {
  final String image;
  final String name;
  final double price;
  final double rating;

  Product({required this.image, required this.name, required this.price, required this.rating});
}

