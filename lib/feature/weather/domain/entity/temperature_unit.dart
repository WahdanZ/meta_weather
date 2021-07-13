import 'package:flutter/foundation.dart';

enum TemperatureUnit { fahrenheit, celsius }

extension TemperatureUnitEx on TemperatureUnit {
  String get inString => describeEnum(this);
}
