import 'package:meta_weather/base/index.dart';
import 'package:meta_weather/feature/weather/domain/entity/weather_entity.dart';
import 'package:meta_weather/feature/weather/remote/model/index.dart';

class WeatherMapper extends Mapper<WeatherModel, WeatherEntity> {
  @override
  WeatherModel mapFromEntity(WeatherEntity type) {
    return const WeatherModel();
  }

  @override
  WeatherEntity mapFromModel(WeatherModel type) {
    return WeatherEntity(
        day: type.applicableDate,
        maxTemp: type.maxTemp,
        created: type.created,
        temp: type.minTemp,
        humidity: type.humidity,
        formattedCondition: type.weatherStateName,
        airPressure: type.airPressure,
        windSpeed: type.windSpeed,
        minTemp: type.minTemp,
        condition: type.weatherStateAbbr);
  }
}
