import 'package:real_estate/core/error/failure.dart';
import 'package:real_estate/core/utils/either.dart';

import '../entities/product_entity.dart';

abstract class ProductRepository {
  Future<Either<Failure, List<ProductEntity>>> getProducts();
}
