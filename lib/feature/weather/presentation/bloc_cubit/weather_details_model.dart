part of 'weather_details_cubit.dart';

class WeatherDetailsModel {
  final WeatherEntity current;
  final List<WeatherEntity> list;
  final TemperatureUnit temperatureUnit;
  WeatherDetailsModel(
      {required this.current,
      required this.list,
      this.temperatureUnit = TemperatureUnit.celsius});

  WeatherDetailsModel copyWith({
    WeatherEntity? current,
    List<WeatherEntity>? list,
    TemperatureUnit? temperatureUnit,
  }) {
    return WeatherDetailsModel(
        current: current ?? this.current,
        list: list ?? this.list,
        temperatureUnit: temperatureUnit ?? this.temperatureUnit);
  }
}
