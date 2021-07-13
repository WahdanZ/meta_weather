// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../di/app_module.dart' as _i22;
import '../../feature/weather/data/index.dart' as _i17;
import '../../feature/weather/data/mapper/location_mapper.dart' as _i10;
import '../../feature/weather/data/mapper/weather_mappper.dart' as _i15;
import '../../feature/weather/data/weather_reposioty_impl.dart' as _i16;
import '../../feature/weather/di/weather_module.dart' as _i23;
import '../../feature/weather/domain/index.dart' as _i12;
import '../../feature/weather/domain/repository/weather_repository.dart' as _i7;
import '../../feature/weather/domain/use_case/get_location_use_case.dart'
    as _i6;
import '../../feature/weather/domain/use_case/get_location_weather_use_case.dart'
    as _i8;
import '../../feature/weather/domain/use_case/get_temperature_unit_use_case.dart'
    as _i9;
import '../../feature/weather/domain/use_case/set_temperature_unit_use_case.dart'
    as _i18;
import '../../feature/weather/presentation/bloc_cubit/search_cubit.dart'
    as _i11;
import '../../feature/weather/presentation/bloc_cubit/setting_cubit.dart'
    as _i19;
import '../../feature/weather/presentation/bloc_cubit/weather_details_cubit.dart'
    as _i14;
import '../../feature/weather/remote/weather_client.dart' as _i13;
import '../index.dart' as _i4;
import '../service/base_service.dart' as _i3;
import '../storage/core_store.dart' as _i20;
import '../storage/core_store_test.dart' as _i21;

const String _prod = 'prod';
const String _dev = 'dev';
const String _test = 'test';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final localModule = _$LocalModule();
  final weatherModule = _$WeatherModule();
  gh.factory<_i3.BaseService>(() => _i3.BaseService(title: get<String>()));
  await gh.factoryAsync<_i4.CoreStore>(() => localModule.prefs,
      registerFor: {_prod, _dev}, preResolve: true);
  gh.lazySingleton<_i5.Dio>(() => weatherModule.dio,
      instanceName: 'weather_dio');
  gh.factory<_i6.GetLocationUseCase>(
      () => _i6.GetLocationUseCase(get<_i7.WeatherRepository>()));
  gh.factory<_i8.GetLocationWeatherUseCase>(
      () => _i8.GetLocationWeatherUseCase(get<_i7.WeatherRepository>()));
  gh.factory<_i9.GetTemperatureUseCase>(
      () => _i9.GetTemperatureUseCase(get<_i7.WeatherRepository>()));
  gh.factory<_i10.LocationMapper>(() => _i10.LocationMapper());
  gh.factory<_i11.SearchCubit>(
      () => _i11.SearchCubit(get<_i12.GetLocationUseCase>()));
  gh.factory<String>(() => weatherModule.baseUrl, instanceName: 'base_url');
  gh.factory<_i13.WeatherClient>(() => _i13.WeatherClient(
      get<_i5.Dio>(instanceName: 'weather_dio'),
      baseUrl: get<String>(instanceName: 'base_url')));
  gh.factory<_i14.WeatherDetailsCubit>(() => _i14.WeatherDetailsCubit(
      get<_i12.GetTemperatureUseCase>(),
      get<_i12.GetLocationWeatherUseCase>()));
  gh.factory<_i15.WeatherMapper>(() => _i15.WeatherMapper());
  gh.factory<_i12.WeatherRepository>(
      () => _i16.WeatherRepositoryImp(
          get<_i13.WeatherClient>(),
          get<_i17.LocationMapper>(),
          get<_i17.WeatherMapper>(),
          get<_i4.CoreStore>()),
      registerFor: {_prod, _dev});
  gh.factory<_i18.SetTemperatureUnitUseCase>(
      () => _i18.SetTemperatureUnitUseCase(get<_i12.WeatherRepository>()));
  gh.factory<_i19.SettingCubit>(() => _i19.SettingCubit(
      get<_i12.GetTemperatureUseCase>(),
      get<_i18.SetTemperatureUnitUseCase>()));
  gh.singleton<_i20.CoreStore>(_i21.CoreStoreTest(), registerFor: {_test});
  return get;
}

class _$LocalModule extends _i22.LocalModule {}

class _$WeatherModule extends _i23.WeatherModule {}
