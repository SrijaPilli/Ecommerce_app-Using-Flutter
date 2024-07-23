import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  final String itemName;

  const CartItem({super.key, required this.itemName});  // Convert key to super.key

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(itemName),
    );
  }
}
