// lib/features/product/data/mappers/product_mapper.dart
import 'package:real_estate/features/product/domain/entities/product_entity.dart';
import '../../domain/data/models/product_dto.dart';

extension ProductDtoMapper on ProductDto {
  ProductEntity toEntity() => ProductEntity(
    id: id,
    title: title,
    price: price,
    description: description,
    category: category,
    imageUrl: imageUrl,
    ratingRate: rating.rate,
    ratingCount: rating.count,
  );
}

