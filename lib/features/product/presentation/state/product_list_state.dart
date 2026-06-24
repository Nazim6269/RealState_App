import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:real_estate/core/error/failure.dart';
import 'package:real_estate/features/product/domain/entities/product_entity.dart';

part 'product_list_state.freezed.dart';

@freezed
sealed class ProductListState with _$ProductListState {
  const factory ProductListState.initial() = ProductListInitial;
  const factory ProductListState.loading() = ProductListLoading;
  const factory ProductListState.empty() = ProductListEmpty;
  const factory ProductListState.error(Failure failure) = ProductListError;
  const factory ProductListState.success(List<ProductEntity> products) = ProductListSuccess;
}
