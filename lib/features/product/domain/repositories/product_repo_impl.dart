import 'package:dio/dio.dart';
import 'package:real_estate/core/error/error_mapper.dart';
import 'package:real_estate/core/error/failure.dart';
import 'package:real_estate/core/utils/either.dart';
import 'package:real_estate/features/product/domain/data/source/product_rds.dart';
import 'package:real_estate/features/product/data/mappers/product_mapper.dart';
import 'package:real_estate/features/product/domain/entities/product_entity.dart';
import 'package:real_estate/features/product/domain/repositories/product_repository.dart';

class ProductRepositoryImpl implements ProductRepository {
  final ProductRemoteDataSource _remote;
  final ErrorMapper _errorMapper;

  ProductRepositoryImpl(this._remote, this._errorMapper);

  @override
  Future<Either<Failure, List<ProductEntity>>> getProducts() async {
    try {
      final dtos = await _remote.getProducts();
      return Right(dtos.map((dto) => dto.toEntity()).toList());
    } on DioException catch (e) {
      return Left(_errorMapper.mapDioException(e));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }
}
