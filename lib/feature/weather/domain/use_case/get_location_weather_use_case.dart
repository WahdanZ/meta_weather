import 'package:meta_weather/base/index.dart';
import 'package:meta_weather/feature/weather/domain/entity/weather_entity.dart';
import 'package:meta_weather/feature/weather/domain/repository/weather_repository.dart';

class GetLocationWeatherUseCase
    extends UseCaseResult<List<WeatherEntity>, GetLocationWeatherParams> {
  final WeatherRepository _weatherRepository;

  GetLocationWeatherUseCase(this._weatherRepository);
  @override
  Future<CustomResult<List<WeatherEntity>>> buildUseCase(params) {
    return _weatherRepository.getWeathers(params.locationId);
  }
}

class GetLocationWeatherParams extends Params {
  final String locationId;

  GetLocationWeatherParams(this.locationId);
  @override
  List<Object?> get props => [locationId];
}
