import 'package:flutter/material.dart';

// Define the ProductDetails class
class ProductDetails {
  final String name;
  final String description;
  // Add other relevant fields

  ProductDetails({required this.name, required this.description});
}

// Define the Product widget
class Product extends StatelessWidget {
  final ProductDetails product;

  const Product({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(product.name),
      subtitle: Text(product.description),
      // Add other UI elements as necessary
    );
  }
}

class SearchPage extends StatelessWidget {
  final List<ProductDetails> searchResults;

  const SearchPage({super.key, required this.searchResults});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Results'),
      ),
      body: ListView.builder(
        itemCount: searchResults.length,
        itemBuilder: (context, index) {
          return Product(product: searchResults[index]);
        },
      ),
    );
  }
}
