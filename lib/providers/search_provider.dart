// lib/providers/search_provider.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ecommerce_app/models/product.dart';
import 'package:ecommerce_app/services/api_service.dart';

final searchProvider = StateNotifierProvider<SearchNotifier, List<Product>>((ref) {
  return SearchNotifier();
});

class SearchNotifier extends StateNotifier<List<Product>> {
  SearchNotifier() : super([]);

  final ApiService apiService = ApiService();

  Future<void> searchProducts(String query) async {
    final products = await apiService.searchProducts(query);
    state = products;
  }
}
