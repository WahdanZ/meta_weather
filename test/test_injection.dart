import 'package:bloc_test/bloc_test.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:meta_weather/base/index.dart';
import 'package:meta_weather/feature/weather/domain/index.dart';
import 'package:meta_weather/feature/weather/presentation/bloc_cubit/search_cubit.dart';
import 'package:meta_weather/feature/weather/presentation/bloc_cubit/weather_details_cubit.dart';
import 'package:mocktail/mocktail.dart';

import 'test_injection.config.dart';

@InjectableInit(generateForDir: ['test'])
void configureTestInjection() => $initGetIt(getIt, environment: 'test');

final GetIt getIt = GetIt.instance;

@LazySingleton(as: WeatherRepository, env: [Environment.test])
class MockWeatherRepository extends Mock implements WeatherRepository {}

@LazySingleton(as: SearchCubit)
class MockSearchCubit extends MockCubit<BaseState<LocationEntity>>
    implements SearchCubit {}

@LazySingleton(as: WeatherDetailsCubit)
class MockWeatherDetailsCubit extends MockCubit<BaseState<WeatherDetailsModel>>
    implements WeatherDetailsCubit {}
