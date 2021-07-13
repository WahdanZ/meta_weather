import 'package:meta_weather/base/bloc/base_cubit.dart';
import 'package:meta_weather/base/bloc/base_state.dart';
import 'package:meta_weather/base/domain/index.dart';
import 'package:meta_weather/feature/weather/domain/index.dart';
import 'package:meta_weather/feature/weather/utils/temperature_utils.dart';

part 'weather_details_model.dart';

class WeatherDetailsCubit extends BaseCubit<WeatherDetailsModel> {
  final GetTemperatureUseCase getTemperatureUseCase;
  final GetLocationWeatherUseCase weatherUseCase;
  WeatherDetailsCubit(this.getTemperatureUseCase, this.weatherUseCase);

  void getWeather(LocationEntity? location) async {
    if (location == null) {
      emit(const BaseState.noData());
      return;
    }
    emit(const BaseState.loading());
    final temp = await getTemperatureUseCase.execute(params: Any());
    logger.i(temp);
    await weatherUseCase
        .execute(params: GetLocationWeatherParams(location.id))
        .then((value) {
      value.maybeWhen(
          (result) => emitSuccess(
              _getWeatherDetailsModel(result, TemperatureUnit.celsius, temp)
                  .copyWith(temperatureUnit: temp)),
          orElse: () => emitFailure('Error'));
    }).catchError((e, s) {
      logger.e(e, s);
      emitFailure('error');
    });
  }

  void temperatureUpdate() async {
    final temp = await getTemperatureUseCase.execute(params: Any());
    logger.i(temp);

    final newSate = state.maybeWhen(
        (result) => BaseState(
            result: result!.copyWith(
                current: weatherEntityMap(
                    result.current, result.temperatureUnit, temp),
                list: result.list
                    .map((e) =>
                        weatherEntityMap(e, result.temperatureUnit, temp))
                    .toList(),
                temperatureUnit: temp)),
        orElse: () => state);
    emit(newSate);
  }

  WeatherDetailsModel _getWeatherDetailsModel(
      List<WeatherEntity> result, TemperatureUnit from, TemperatureUnit to) {
    final res = result.map((e) => weatherEntityMap(e, from, to)).toList();
    return WeatherDetailsModel(current: res.first, list: res);
  }

  WeatherEntity weatherEntityMap(
      WeatherEntity weather, TemperatureUnit from, TemperatureUnit to) {
    return weather.copyWith(
        temp: TemperatureUtils.convert(weather.temp ?? 0, from, to),
        maxTemp: TemperatureUtils.convert(weather.maxTemp ?? 0, from, to),
        minTemp: TemperatureUtils.convert(weather.minTemp ?? 0, from, to));
  }

  void select(WeatherEntity e) {
    emit(state.maybeWhen(
        (result) => BaseState(result: result!.copyWith(current: e)),
        orElse: () => state));
  }
}
