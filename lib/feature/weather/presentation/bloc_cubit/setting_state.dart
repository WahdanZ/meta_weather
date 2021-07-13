part of 'setting_cubit.dart';

@immutable
class SettingState {
  final TemperatureUnit temperatureUnit;

  const SettingState({required this.temperatureUnit});

  SettingState copyWith({
    TemperatureUnit? temperatureUnit,
  }) {
    return SettingState(
      temperatureUnit: temperatureUnit ?? this.temperatureUnit,
    );
  }
}
