// lib/providers/product_provider.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ecommerce_app/models/product.dart';
import 'package:ecommerce_app/services/api_service.dart';

final productProvider = StateNotifierProvider<ProductNotifier, List<Product>>((ref) {
  return ProductNotifier();
});

class ProductNotifier extends StateNotifier<List<Product>> {
  ProductNotifier() : super([]) {
    fetchInitialProducts();
  }

  final ApiService apiService = ApiService();

  Future<void> fetchInitialProducts() async {
    final products = await apiService.fetchProducts(0, 10);
    state = products;
  }

  Future<void> fetchMoreProducts(int start) async {
    final moreProducts = await apiService.fetchProducts(start, 10);
    state = [...state, ...moreProducts];
  }
}
