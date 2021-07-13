import 'package:meta_weather/feature/weather/domain/entity/index.dart';

class TemperatureUtils {
  static double convert(
      double value, TemperatureUnit from, TemperatureUnit to) {
    switch (from) {
      case TemperatureUnit.fahrenheit:
        if (to == TemperatureUnit.fahrenheit) {
          return value;
        }
        return ftoC(value);
      case TemperatureUnit.celsius:
        if (to == TemperatureUnit.celsius) {
          return value;
        }
        return ctoF(value);
    }
  }

  static double ctoF(num c) {
    return c * 9 / 5 + 32;
  }

  static double ftoC(num f) {
    return (f - 32) * 5 / 9;
  }

  static String getTemp(double temp, TemperatureUnit temperatureUnit) =>
      '${temp.toStringAsFixed(0)}'
      '°${temperatureUnit.inString[0].toUpperCase()}';
}
