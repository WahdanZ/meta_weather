// Copyright (c) 2021, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:meta_weather/base/index.dart';
import 'package:meta_weather/feature/weather/domain/index.dart';
import 'package:meta_weather/feature/weather/presentation/bloc_cubit/search_cubit.dart';
import 'package:mocktail/mocktail.dart';

import '../../test_injection.dart';

void main() async {
  configureTestInjection();
  await configureDependencies(environment: 'test');
  group('SearchCubit', () {
    late WeatherRepository weatherRepository;
    setUpAll(() {
      weatherRepository = inject();
    });
    test('initial state is initial', () {
      expect(inject<SearchCubit>().state, const BaseState.initial());
    });

    blocTest<SearchCubit, BaseState<LocationEntity>>(
      'emits No data when city not found',
      build: () {
        when(() => weatherRepository.getLocation('cadsds')).thenAnswer(
            (_) => Future.value(const CustomResult<LocationEntity?>(null)));
        return inject<SearchCubit>();
      },
      act: (cubit) => cubit.getLocation('cadsds'),
      expect: () => [
        const BaseState<LocationEntity>.loading(),
        const BaseState<LocationEntity>.noData()
      ],
    );
    blocTest<SearchCubit, BaseState<LocationEntity>>(
      'emits Date when get result',
      build: () {
        when(() => weatherRepository.getLocation('cairo')).thenAnswer((_) =>
            Future.value(const CustomResult<LocationEntity?>(mockLocation)));
        return inject<SearchCubit>();
      },
      act: (cubit) => cubit.getLocation('cairo'),
      expect: () => [
        const BaseState<LocationEntity>.loading(),
        const BaseState<LocationEntity>(result: mockLocation)
      ],
    );
    blocTest<SearchCubit, BaseState<LocationEntity>>(
      'emits Error when get Custom Result Fail',
      build: () {
        when(() => weatherRepository.getLocation('cairo')).thenAnswer((_) =>
            Future.value(
                const CustomResult<LocationEntity?>.failure(Failure('-1'))));
        return inject<SearchCubit>();
      },
      act: (cubit) => cubit.getLocation('cairo'),
      expect: () => [
        const BaseState<LocationEntity>.loading(),
        const BaseState<LocationEntity>.failure('error')
      ],
    );
    blocTest<SearchCubit, BaseState<LocationEntity>>(
      'when location is empty or null return error '
      'with Please Enter a valid Location',
      build: () {
        return inject<SearchCubit>();
      },
      act: (cubit) => cubit.getLocation(''),
      expect: () => [
        const BaseState<LocationEntity>.failure('Please Enter a valid Location')
      ],
    );
  });
}

const mockLocation = LocationEntity(id: '1', name: 'Cairo', lat: 1, long: 1);
