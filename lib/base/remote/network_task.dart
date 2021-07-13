// Package imports:
import 'package:dio/dio.dart';
import 'package:meta_weather/base/result/failure.dart';
import 'package:meta_weather/base/result/network_exception.dart';
// Project imports:
import 'package:meta_weather/base/service/logger.dart';

import '../result/result.dart';

typedef NetworkCallFunction<T> = Future<T> Function();

class NetworkTask<T> {
  NetworkTask(this._task);

  final logger = getLogger('NetWorkTask');

  final FutureTask<T> _task;

  Future<CustomResult<T>> execute({ErrorMapping? errorMapping}) =>
      _task().then((response) => CustomResult<T>(response)).catchError(
          (e) async => handleNetworkError(e, errorMapping: errorMapping));

  CustomResult<T> handleNetworkError(Error error,
      {ErrorMapping? errorMapping}) {
    logger.e(error);
    if (error is DioError) {
      final e = error as DioError;
      if (DioErrorType.receiveTimeout == e.type ||
          DioErrorType.connectTimeout == e.type) {
        logger.e('CONNECT_TIMEOUT');
      }
      if (e.response?.statusCode != null) {
        switch (e.response!.statusCode) {
          case 403:
            return const CustomResult.httpErrors(
                HttpErrors.resourceForbidden());
          case 404:
            return const CustomResult.httpErrors(HttpErrors.resourceNotFound());
          case 500:
            return const CustomResult.httpErrors(
                HttpErrors.internalServiceError());
          case 502:
            return const CustomResult.httpErrors(HttpErrors.badGateWay());
          case 301:
            return const CustomResult.httpErrors(HttpErrors.resourceRemoved());
          case 302:
            return const CustomResult.httpErrors(
                HttpErrors.removedResourceFound());
          default:
            return CustomResult.failure((errorMapping?.call(
                    e.response?.data as Map<dynamic, dynamic>?,
                    code: e.response?.statusCode)) ??
                Failure.networkException(e.error?.toString()));
        }
      }
    }
    return _onError(error, error.stackTrace);
  }

  CustomResult<T> _onError(Error error, StackTrace? stackTrace) {
    logger.e('NetworkError', error, stackTrace);
    return CustomResult.failure(Failure.networkException(error.toString()));
  }
}

typedef ErrorMapping = Failure Function(Map? map, {int? code});

typedef FutureTask<T> = Future<T> Function();
