// lib/features/product/domain/entities/product_entity.dart
import 'package:freezed_annotation/freezed_annotation.dart';
part 'product_entity.freezed.dart';

@freezed
abstract class ProductEntity with _$ProductEntity {
  const factory ProductEntity({
    required int id,
    required String title,
    required double price,
    required String description,
    required String category,
    required String imageUrl, // ← "imageUrl" lives here in the entity
    required double ratingRate,
    required int ratingCount,
  }) = _ProductEntity;
}

