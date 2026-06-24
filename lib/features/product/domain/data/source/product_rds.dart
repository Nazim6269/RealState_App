// lib/features/product/data/datasources/product_remote_datasource.dart
import 'package:dio/dio.dart';
import '../models/product_dto.dart';

abstract class ProductRemoteDataSource {
  Future<List<ProductDto>> getProducts();
}

class ProductRemoteDataSourceImpl implements ProductRemoteDataSource {
  final Dio _dio;
  ProductRemoteDataSourceImpl(this._dio);

  @override
  Future<List<ProductDto>> getProducts() async {
    final response = await _dio.get('/products');
    final list = response.data as List<dynamic>;
    return list
        .map((e) => ProductDto.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
