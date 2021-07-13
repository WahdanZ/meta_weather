import 'package:injectable/injectable.dart';
import 'package:meta_weather/base/index.dart';
import 'package:meta_weather/base/remote/network_task.dart';
import 'package:meta_weather/base/result/result.dart';
import 'package:meta_weather/base/service/base_service.dart';
import 'package:meta_weather/feature/weather/domain/index.dart';
import 'package:meta_weather/feature/weather/remote/weather_client.dart';

import 'index.dart';

@Injectable(as: WeatherRepository, env: [Environment.prod, Environment.dev])
class WeatherRepositoryImp extends BaseService implements WeatherRepository {
  WeatherRepositoryImp(this._weatherClient, this.locationMapper,
      this.weatherMapper, this._coreStore);
  static const String temperatureUnit = 'TemperatureUnit';
  final LocationMapper locationMapper;
  final WeatherMapper weatherMapper;
  final CoreStore _coreStore;
  final WeatherClient _weatherClient;

  @override
  Future<CustomResult<LocationEntity?>> getLocation(String cityName) {
    log.i(cityName);
    return NetworkTask(() => _weatherClient.getLocation(cityName))
        .execute()
        .mapTo((t) {
      return CustomResult(
          t?.isNotEmpty == true ? locationMapper.mapFromModel(t!.first) : null);
    });
  }

  @override
  Future<CustomResult<List<WeatherEntity>>> getWeathers(String locationId) {
    log.i(locationId);
    return NetworkTask(() => _weatherClient.getWeather(locationId))
        .execute()
        .map((t) =>
            t?.consolidatedWeather
                ?.map((weather) => weatherMapper
                    .mapFromModel(weather)
                    .copyWith(location: t.title, locationId: t.woeid))
                .toList() ??
            []);
  }

  @override
  Future<TemperatureUnit> getTemperature() async {
    final temp = await _coreStore.getString(temperatureUnit);
    log.i(temp);

    switch (temp) {
      case 'celsius':
        return TemperatureUnit.celsius;
      case 'fahrenheit':
        return TemperatureUnit.fahrenheit;
      default:
        return TemperatureUnit.celsius;
    }
  }

  @override
  Future<void> setTemperature(TemperatureUnit unit) async {
    log.i(unit);
    await _coreStore.setString(temperatureUnit, unit.inString);
  }
}
