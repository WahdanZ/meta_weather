import 'package:json_annotation/json_annotation.dart';
import 'package:meta_weather/feature/weather/remote/model/weather_model.dart';

part 'weather_response.g.dart';

@JsonSerializable()
class WeatherResponse {
  @JsonKey(name: 'consolidated_weather')
  final List<WeatherModel>? consolidatedWeather;
  @JsonKey(name: 'time')
  final String? time;
  @JsonKey(name: 'sun_rise')
  final String? sunRise;
  @JsonKey(name: 'sun_set')
  final String? sunSet;
  @JsonKey(name: 'timezone_name')
  final String? timezoneName;
  @JsonKey(name: 'title')
  final String? title;
  @JsonKey(name: 'location_type')
  final String? locationType;
  @JsonKey(name: 'woeid')
  final int? woeid;
  @JsonKey(name: 'latt_long')
  final String? lattLong;
  @JsonKey(name: 'timezone')
  final String? timezone;

  const WeatherResponse({
    this.consolidatedWeather,
    this.time,
    this.sunRise,
    this.sunSet,
    this.timezoneName,
    this.title,
    this.locationType,
    this.woeid,
    this.lattLong,
    this.timezone,
  });

  factory WeatherResponse.fromJson(Map<String, dynamic> json) {
    return _$WeatherResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$WeatherResponseToJson(this);
}
