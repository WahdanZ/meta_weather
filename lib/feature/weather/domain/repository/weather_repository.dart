import 'package:meta_weather/base/result/result.dart';
import 'package:meta_weather/feature/weather/domain/entity/location_entity.dart';
import 'package:meta_weather/feature/weather/domain/entity/temperature_unit.dart';
import 'package:meta_weather/feature/weather/domain/entity/weather_entity.dart';

abstract class WeatherRepository {
  Future<CustomResult<LocationEntity?>> getLocation(String cityName);

  Future<CustomResult<List<WeatherEntity>>> getWeathers(String locationId);

  Future<TemperatureUnit> getTemperature();

  Future<void> setTemperature(TemperatureUnit temperatureUnit);
}
