import 'package:freezed_annotation/freezed_annotation.dart';
part 'failure.freezed.dart';

@freezed
sealed class Failure with _$Failure {
  const factory Failure.network({String? message}) = NetworkFailure;
  const factory Failure.timeout({String? message}) = TimeoutFailure;
  const factory Failure.noInternet() = NoInternetFailure;
  const factory Failure.notFound({String? message}) = NotFoundFailure;
  const factory Failure.server({String? message}) = ServerFailure;
  const factory Failure.unknown({String? message}) = UnknownFailure;
}

extension FailureMessage on Failure {
  String get errorMessage => when(
    network: (m) => m ?? 'Network error',
    timeout: (m) => m ?? 'Request timed out',
    noInternet: () => 'No internet connection',
    notFound: (m) => m ?? 'Not found',
    server: (m) => m ?? 'Server error',
    unknown: (m) => m ?? 'Unexpected error',
  );
}
