// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherResponse _$WeatherResponseFromJson(Map<String, dynamic> json) {
  return WeatherResponse(
    consolidatedWeather: (json['consolidated_weather'] as List<dynamic>?)
        ?.map((e) => WeatherModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    time: json['time'] as String?,
    sunRise: json['sun_rise'] as String?,
    sunSet: json['sun_set'] as String?,
    timezoneName: json['timezone_name'] as String?,
    title: json['title'] as String?,
    locationType: json['location_type'] as String?,
    woeid: json['woeid'] as int?,
    lattLong: json['latt_long'] as String?,
    timezone: json['timezone'] as String?,
  );
}

Map<String, dynamic> _$WeatherResponseToJson(WeatherResponse instance) =>
    <String, dynamic>{
      'consolidated_weather': instance.consolidatedWeather,
      'time': instance.time,
      'sun_rise': instance.sunRise,
      'sun_set': instance.sunSet,
      'timezone_name': instance.timezoneName,
      'title': instance.title,
      'location_type': instance.locationType,
      'woeid': instance.woeid,
      'latt_long': instance.lattLong,
      'timezone': instance.timezone,
    };
