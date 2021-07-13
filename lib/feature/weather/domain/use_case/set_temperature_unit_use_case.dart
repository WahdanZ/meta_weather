import 'package:meta_weather/base/domain/index.dart';
import 'package:meta_weather/feature/weather/domain/entity/index.dart';
import 'package:meta_weather/feature/weather/domain/index.dart';

class SetTemperatureUnitUseCase
    extends AsyncCompletableUseCase<TemperatureUnitParams> {
  final WeatherRepository _weatherRepository;

  SetTemperatureUnitUseCase(this._weatherRepository);
  @override
  Future<void> buildUseCase(TemperatureUnitParams? params) {
    return _weatherRepository.setTemperature(params!.temperatureUnit);
  }
}

class TemperatureUnitParams extends Params {
  final TemperatureUnit temperatureUnit;

  TemperatureUnitParams(this.temperatureUnit);

  @override
  List<Object?> get props => [temperatureUnit];
}
