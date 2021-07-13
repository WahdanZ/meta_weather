import 'package:meta_weather/base/domain/index.dart';
import 'package:meta_weather/base/index.dart';
import 'package:meta_weather/feature/weather/domain/entity/temperature_unit.dart';
import 'package:meta_weather/feature/weather/domain/repository/weather_repository.dart';

class GetTemperatureUseCase extends UseCase<TemperatureUnit, Any> {
  GetTemperatureUseCase(this._weatherRepository);

  final WeatherRepository _weatherRepository;

  @override
  Future<TemperatureUnit> buildUseCase(Any params) async {
    return _weatherRepository.getTemperature();
  }
}
