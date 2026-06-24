// lib/core/di/providers.dart
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:real_estate/core/error/error_mapper.dart';
import 'package:real_estate/core/network/dio_client.dart';
import 'package:real_estate/features/product/domain/data/source/product_rds.dart';
import 'package:real_estate/features/product/domain/repositories/product_repository.dart';
import 'package:real_estate/features/product/domain/repositories/product_repo_impl.dart';
import 'package:real_estate/features/product/domain/usecase/get_product_usecase.dart';

final dioProvider = Provider<Dio>((ref) => createDio());

final errorMapperProvider = Provider<ErrorMapper>((ref) => ErrorMapper());

final productRemoteDataSourceProvider = Provider<ProductRemoteDataSource>(
  (ref) => ProductRemoteDataSourceImpl(ref.watch(dioProvider)),
);

final productRepositoryProvider = Provider<ProductRepository>(
  (ref) => ProductRepositoryImpl(
    ref.watch(productRemoteDataSourceProvider),
    ref.watch(errorMapperProvider),
  ),
);

final getProductsUseCaseProvider = Provider<GetProductsUseCase>(
  (ref) => GetProductsUseCase(ref.watch(productRepositoryProvider)),
);
