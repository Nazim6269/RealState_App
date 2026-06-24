import 'package:dio/dio.dart';
import 'failure.dart';

class ErrorMapper {
  Failure mapDioException(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.sendTimeout:
        return const Failure.timeout();
      case DioExceptionType.connectionError:
        return const Failure.noInternet();
      case DioExceptionType.badResponse:
        final code = e.response?.statusCode ?? 0;
        if (code == 404) return const Failure.notFound();
        if (code >= 500) return Failure.server(message: 'Server error $code');
        return Failure.network(message: 'HTTP $code');
      default:
        return Failure.unknown(message: e.message);
    }
  }
}
