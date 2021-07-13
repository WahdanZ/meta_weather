// Copyright (c) 2021, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:meta_weather/base/index.dart';
import 'package:meta_weather/feature/weather/domain/index.dart';
import 'package:meta_weather/feature/weather/presentation/bloc_cubit/search_cubit.dart';
import 'package:meta_weather/feature/weather/presentation/page/search_page.dart';
import 'package:mocktail/mocktail.dart';

import '../../helpers/helpers.dart';
import '../../test_injection.dart';

void main() async {
  configureTestInjection();
  setUpAll(() {
    registerFallbackValue<BaseState<LocationEntity>>(
        const BaseState<LocationEntity>.initial());
  });
  group('SearchPage', () {
    late SearchCubit searchCubit;
    const searchButtonKey = Key(
      'search_button',
    );
    setUp(() {
      searchCubit = inject();
      searchCubit.stream.listen(print);
    });
    testWidgets('renders SearchView', (tester) async {
      when(() => searchCubit.state)
          .thenReturn(const BaseState<LocationEntity>.initial());
      await tester.pumpApp(const SearchPage());
      expect(find.byType(SearchPage), findsOneWidget);
    });
    testWidgets('calls getLocation when click on search button',
        (tester) async {
      when(() => searchCubit.state)
          .thenReturn(const BaseState<LocationEntity>.initial());
      when(() => searchCubit.getLocation('')).thenReturn(null);
      await tester.pumpApp(const SearchPage());
      await tester.tap(find.byKey(searchButtonKey));
      verify(() => searchCubit.getLocation('')).called(1);
    });
    testWidgets(
        'when user not enter any keyword and then'
        ' click on search button show snackbar with error message No Result ',
        (tester) async {
      when(() => searchCubit.state)
          .thenReturn(const BaseState<LocationEntity>.initial());
      when(() => searchCubit.getLocation(''))
          .thenReturn(const BaseState<LocationEntity>.noData());
      await tester.pumpApp(const SearchPage());
      await tester.tap(find.byKey(searchButtonKey));
      expect(find.text('No Result'), findsOneWidget);
    });
  });
}
