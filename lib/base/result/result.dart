// abstract class CustomResult<T> extends Either<Failure, T> {}

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'failure.dart';
import 'network_exception.dart';

part 'result.freezed.dart';

@freezed
class CustomResult<T> with _$CustomResult<T> {
  const factory CustomResult(T result) = _ResultSuccess<T>;

  const factory CustomResult.failure(Failure error) = _ResultFailure;

  const factory CustomResult.httpErrors(HttpErrors error) = _HttpErrors;
}

extension ExtenCustomResult on CustomResult {
  bool isSuccessful() => runtimeType == _ResultSuccess;
}

extension FutureEx<T> on Future<CustomResult<T?>> {
  Future<CustomResult<B>> mapTo<B>(CustomResult<B> Function(T? t) f) =>
      then((value) {
        return value.map((value) => f(value.result),
            failure: (failure) => CustomResult.failure(failure.error),
            httpErrors: (value) => CustomResult.httpErrors(value.error));
      });
  Future<CustomResult<B>> map<B>(B Function(T? t) f) => then((value) {
        return value.map((value) => CustomResult(f(value.result)),
            failure: (failure) => CustomResult.failure(failure.error),
            httpErrors: (value) => CustomResult.httpErrors(value.error));
      });
  Future<CustomResult<B>> flatMap<B>(Future<B> Function(T? t) f) =>
      then((value) {
        return value.map(
            (value) => f(value.result).then((value) => CustomResult(value)),
            failure: (failure) => CustomResult.failure(failure.error),
            httpErrors: (value) => CustomResult.httpErrors(value.error));
      });
  Future<CustomResult<T?>> mapFailure(Failure Function(Failure t) f) =>
      then((value) {
        return value.map((value) => value,
            failure: (failure) => CustomResult.failure(f(failure.error)),
            httpErrors: (value) => value);
      });
}
