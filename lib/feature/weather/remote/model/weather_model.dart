import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_model.g.dart';

@JsonSerializable()
class WeatherModel {
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'weather_state_name')
  final String? weatherStateName;
  @JsonKey(name: 'weather_state_abbr')
  final String? weatherStateAbbr;
  @JsonKey(name: 'wind_direction_compass')
  final String? windDirectionCompass;
  @JsonKey(name: 'created')
  final DateTime? created;
  @JsonKey(name: 'applicable_date')
  final DateTime? applicableDate;
  @JsonKey(name: 'min_temp')
  final double? minTemp;
  @JsonKey(name: 'max_temp')
  final double? maxTemp;
  @JsonKey(name: 'the_temp')
  final double? theTemp;
  @JsonKey(name: 'wind_speed')
  final double? windSpeed;
  @JsonKey(name: 'wind_direction')
  final double? windDirection;
  @JsonKey(name: 'air_pressure')
  final double? airPressure;
  @JsonKey(name: 'humidity')
  final int? humidity;
  @JsonKey(name: 'visibility')
  final double? visibility;
  @JsonKey(name: 'predictability')
  final int? predictability;

  const WeatherModel({
    this.id,
    this.weatherStateName,
    this.weatherStateAbbr,
    this.windDirectionCompass,
    this.created,
    this.applicableDate,
    this.minTemp,
    this.maxTemp,
    this.theTemp,
    this.windSpeed,
    this.windDirection,
    this.airPressure,
    this.humidity,
    this.visibility,
    this.predictability,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return _$WeatherModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$WeatherModelToJson(this);

  WeatherModel copyWith({
    int? id,
    String? weatherStateName,
    String? weatherStateAbbr,
    String? windDirectionCompass,
    DateTime? created,
    DateTime? applicableDate,
    double? minTemp,
    double? maxTemp,
    double? theTemp,
    double? windSpeed,
    double? windDirection,
    double? airPressure,
    int? humidity,
    double? visibility,
    int? predictability,
  }) {
    return WeatherModel(
      id: id ?? this.id,
      weatherStateName: weatherStateName ?? this.weatherStateName,
      weatherStateAbbr: weatherStateAbbr ?? this.weatherStateAbbr,
      windDirectionCompass: windDirectionCompass ?? this.windDirectionCompass,
      created: created ?? this.created,
      applicableDate: applicableDate ?? this.applicableDate,
      minTemp: minTemp ?? this.minTemp,
      maxTemp: maxTemp ?? this.maxTemp,
      theTemp: theTemp ?? this.theTemp,
      windSpeed: windSpeed ?? this.windSpeed,
      windDirection: windDirection ?? this.windDirection,
      airPressure: airPressure ?? this.airPressure,
      humidity: humidity ?? this.humidity,
      visibility: visibility ?? this.visibility,
      predictability: predictability ?? this.predictability,
    );
  }
}
