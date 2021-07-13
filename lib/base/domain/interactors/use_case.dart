// Dart imports:
import 'dart:async';

import 'package:meta_weather/base/service/base_service.dart';

import '../../result/result.dart';
import 'index.dart';

abstract class UseCase<T, P extends Params> extends BaseService {
  /// Builds the [Future]. [Params] is required
  /// by the [UseCase] to retrieve the appropriate data from the repository
  Future<T> buildUseCase(P params);

  Future<T> execute({required P params}) async {
    log.d('execute $runtimeType with params $params');
    return buildUseCase(params);
  }
}

abstract class UseCaseResult<T, P extends Params>
    extends UseCase<CustomResult<T>, P> {}
