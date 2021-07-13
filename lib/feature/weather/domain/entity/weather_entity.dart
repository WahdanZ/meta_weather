import 'package:equatable/equatable.dart';

class WeatherEntity extends Equatable {
  const WeatherEntity(
      {this.condition,
      this.formattedCondition,
      this.minTemp,
      this.temp,
      this.maxTemp,
      this.locationId,
      this.created,
      this.day,
      this.location,
      this.windSpeed,
      this.humidity,
      this.airPressure});

  final String? condition;
  final DateTime? created;
  final DateTime? day;
  final String? formattedCondition;
  final String? location;
  final int? locationId;
  final double? maxTemp;
  final double? minTemp;
  final double? temp;
  final double? windSpeed;
  final int? humidity;
  final double? airPressure;

  @override
  List<Object?> get props => [
        condition,
        formattedCondition,
        minTemp,
        temp,
        maxTemp,
        locationId,
        created,
        day,
        location,
        windSpeed,
        humidity,
        airPressure
      ];

  WeatherEntity copyWith(
      {String? condition,
      String? formattedCondition,
      double? minTemp,
      double? temp,
      double? maxTemp,
      int? locationId,
      DateTime? created,
      DateTime? day,
      String? location,
      double? windSpeed,
      double? airPressure,
      int? humidity}) {
    return WeatherEntity(
        condition: condition ?? this.condition,
        formattedCondition: formattedCondition ?? this.formattedCondition,
        minTemp: minTemp ?? this.minTemp,
        temp: temp ?? this.temp,
        maxTemp: maxTemp ?? this.maxTemp,
        locationId: locationId ?? this.locationId,
        created: created ?? this.created,
        day: day ?? this.day,
        location: location ?? this.location,
        humidity: humidity ?? this.humidity,
        airPressure: airPressure ?? this.airPressure,
        windSpeed: windSpeed ?? this.windSpeed);
  }
}
