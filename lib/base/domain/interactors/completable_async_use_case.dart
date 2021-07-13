// Project imports:
import 'async_use_case.dart';

abstract class AsyncCompletableUseCase<P extends Params>
    extends AsyncUseCase<void, P> {
  @override
  Future<void> buildUseCase(P? params);
}
