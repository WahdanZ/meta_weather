// Copyright (c) 2021, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:meta_weather/base/index.dart';
import 'package:meta_weather/feature/weather/presentation/bloc_cubit/weather_details_cubit.dart';
import 'package:meta_weather/feature/weather/presentation/page/weather_details_page.dart';
import 'package:mocktail/mocktail.dart';

import '../../helpers/helpers.dart';
import '../../test_injection.dart';

void main() async {
  configureTestInjection();
  setUpAll(() {
    registerFallbackValue<BaseState<WeatherDetailsModel>>(
        const BaseState<WeatherDetailsModel>.initial());
  });
  group('WeatherDetailsPage', () {
    late WeatherDetailsCubit weatherDetailsCubit;
    setUp(() {
      weatherDetailsCubit = inject();
      weatherDetailsCubit.stream.listen(print);
    });
    testWidgets('renders WeatherDetailsPage', (tester) async {
      when(() => weatherDetailsCubit.state)
          .thenReturn(const BaseState<WeatherDetailsModel>.initial());
      await tester.pumpApp(const WeatherDetailsPage());
      expect(find.byType(WeatherDetailsPage), findsOneWidget);
    });
    testWidgets('show CircularProgressIndicator while load data ',
        (tester) async {
      whenListen(
        weatherDetailsCubit,
        Stream.fromIterable([
          const BaseState<WeatherDetailsModel>.initial(),
          const BaseState<WeatherDetailsModel>.loading()
        ]),
      );
      when(() => weatherDetailsCubit.state)
          .thenReturn(const BaseState<WeatherDetailsModel>.loading());

      await tester.pumpApp(const WeatherDetailsPage());
      await tester.pump();
      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });
    testWidgets('show Retry button when fail to load data ', (tester) async {
      whenListen(
        weatherDetailsCubit,
        Stream.fromIterable([
          const BaseState<WeatherDetailsModel>.initial(),
          const BaseState<WeatherDetailsModel>.failure('error')
        ]),
      );
      when(() => weatherDetailsCubit.state)
          .thenReturn(const BaseState<WeatherDetailsModel>.failure('error'));
      await tester.pumpApp(const WeatherDetailsPage());
      await tester.pump();
      expect(find.text('Retry'), findsOneWidget);
    });
  });
}
