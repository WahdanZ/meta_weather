import 'package:meta_weather/base/domain/interactors/index.dart';
import 'package:meta_weather/base/result/result.dart';
import 'package:meta_weather/feature/weather/domain/entity/location_entity.dart';
import 'package:meta_weather/feature/weather/domain/repository/weather_repository.dart';

class GetLocationUseCase
    extends UseCaseResult<LocationEntity?, GetLocationParams> {
  GetLocationUseCase(this._weatherRepository);

  final WeatherRepository _weatherRepository;

  @override
  Future<CustomResult<LocationEntity?>> buildUseCase(
      GetLocationParams? params) {
    return _weatherRepository.getLocation(params!.cityName);
  }
}

class GetLocationParams extends Params {
  GetLocationParams({required this.cityName});

  final String cityName;

  @override
  List<Object?> get props => [cityName];
}
