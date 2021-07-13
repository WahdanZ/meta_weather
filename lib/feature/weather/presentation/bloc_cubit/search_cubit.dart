import 'package:meta_weather/base/index.dart';
import 'package:meta_weather/feature/weather/domain/index.dart';

class SearchCubit extends BaseCubit<LocationEntity> {
  final GetLocationUseCase _getLocationUseCase;
  SearchCubit(this._getLocationUseCase);
  void getLocation(String location) {
    if (location.isEmpty) {
      emitFailure('Please Enter a valid Location');
      return;
    }
    emit(const BaseState.loading());
    _getLocationUseCase
        .execute(params: GetLocationParams(cityName: location))
        .then((result) {
      result.when((value) {
        if (value != null) {
          emit(BaseState(result: value));
        } else {
          emit(const BaseState.noData());
        }
      }, failure: (_) {
        emit(const BaseState.failure('error'));
      }, httpErrors: httpErrorsToState);
    }).catchError((e, s) {
      logger.e(e, s);
      emitFailure('error');
    });
  }
}
