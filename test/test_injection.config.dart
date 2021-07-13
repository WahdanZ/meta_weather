// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:meta_weather/feature/weather/domain/index.dart' as _i6;
import 'package:meta_weather/feature/weather/presentation/bloc_cubit/search_cubit.dart'
    as _i3;
import 'package:meta_weather/feature/weather/presentation/bloc_cubit/weather_details_cubit.dart'
    as _i5;

import 'test_injection.dart' as _i4;

const String _test = 'test';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.SearchCubit>(() => _i4.MockSearchCubit());
  gh.lazySingleton<_i5.WeatherDetailsCubit>(
      () => _i4.MockWeatherDetailsCubit());
  gh.lazySingleton<_i6.WeatherRepository>(() => _i4.MockWeatherRepository(),
      registerFor: {_test});
  return get;
}
