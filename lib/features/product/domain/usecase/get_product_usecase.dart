import 'package:real_estate/core/error/failure.dart';
import 'package:real_estate/core/utils/either.dart';

import '../entities/product_entity.dart';
import '../repositories/product_repository.dart';

class GetProductsUseCase {
  final ProductRepository _repository;
  GetProductsUseCase(this._repository);

  Future<Either<Failure, List<ProductEntity>>> call() {
    return _repository.getProducts();
  }
}
