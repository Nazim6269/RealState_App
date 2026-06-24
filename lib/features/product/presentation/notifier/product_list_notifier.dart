import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:real_estate/core/di/providers.dart';
import 'package:real_estate/features/product/domain/usecase/get_product_usecase.dart';
import 'package:real_estate/features/product/presentation/state/product_list_state.dart';

class ProductListNotifier extends Notifier<ProductListState> {
  late final GetProductsUseCase _getProducts;

  @override
  ProductListState build() {
    _getProducts = ref.watch(getProductsUseCaseProvider);
    return const ProductListState.initial();
  }

  Future<void> fetchProducts() async {
    state = const ProductListState.loading();

    final result = await _getProducts();

    state = result.fold(
      (failure) => ProductListState.error(failure),
      (products) => products.isEmpty
          ? const ProductListState.empty()
          : ProductListState.success(products),
    );
  }
}

final productListNotifierProvider =
    NotifierProvider<ProductListNotifier, ProductListState>(
      ProductListNotifier.new,
    );
