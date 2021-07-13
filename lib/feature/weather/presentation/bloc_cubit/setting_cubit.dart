import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:meta_weather/base/domain/index.dart';
import 'package:meta_weather/feature/weather/domain/index.dart';
import 'package:meta_weather/feature/weather/domain/use_case/set_temperature_unit_use_case.dart';

part 'setting_state.dart';

class SettingCubit extends Cubit<SettingState> {
  final GetTemperatureUseCase _getTemperatureUseCase;
  final SetTemperatureUnitUseCase _setTemperatureUnitUseCase;
  SettingCubit(this._getTemperatureUseCase, this._setTemperatureUnitUseCase)
      : super(const SettingState(temperatureUnit: TemperatureUnit.celsius));
  void getTemperature() {
    _getTemperatureUseCase
        .execute(params: Any())
        .then((value) => emit(state.copyWith(temperatureUnit: value)));
  }

  void setTemperature(TemperatureUnit temperatureUnit) {
    _setTemperatureUnitUseCase
        .execute(params: TemperatureUnitParams(temperatureUnit))
        .then(
            (value) => emit(state.copyWith(temperatureUnit: temperatureUnit)));
  }
}
