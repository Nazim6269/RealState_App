// lib/features/product/presentation/screens/product_list_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../notifier/product_list_notifier.dart';
import '../../domain/entities/product_entity.dart';
import 'package:real_estate/core/error/failure.dart';
import 'package:real_estate/features/product/presentation/state/product_list_state.dart';

class ProductListScreen extends ConsumerWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(productListNotifierProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Products')),
      body: switch (state) {
        ProductListInitial() => Center(
          child: ElevatedButton(
            onPressed: () =>
                ref.read(productListNotifierProvider.notifier).fetchProducts(),
            child: const Text('Load Products'),
          ),
        ),
        ProductListLoading() => const Center(
          child: CircularProgressIndicator(),
        ),
        ProductListEmpty() => const Center(child: Text('No products found.')),
        ProductListError(:final failure) => Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(failure.errorMessage, textAlign: TextAlign.center),
              const SizedBox(height: 12),
              ElevatedButton(
                onPressed: () => ref
                    .read(productListNotifierProvider.notifier)
                    .fetchProducts(),
                child: const Text('Retry'),
              ),
            ],
          ),
        ),
        ProductListSuccess(:final products) => ListView.builder(
          itemCount: products.length,
          itemBuilder: (_, i) => _ProductTile(product: products[i]),
        ),
      },
    );
  }
}

class _ProductTile extends StatelessWidget {
  final ProductEntity product;
  const _ProductTile({required this.product});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(product.imageUrl, width: 48, fit: BoxFit.contain),
      title: Text(product.title, maxLines: 2, overflow: TextOverflow.ellipsis),
      subtitle: Text(
        '\$${product.price.toStringAsFixed(2)} · ⭐ ${product.ratingRate}',
      ),
      trailing: Text(
        '\$${product.price.toStringAsFixed(2)}',
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
