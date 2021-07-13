// Project imports:
import 'async_use_case.dart';

abstract class StreamUseCase<T, P extends Params> {
  Stream<T> buildUseCase(P? params);

  Stream<T> execute({P? params}) {
    return buildUseCase(params);
  }
}
