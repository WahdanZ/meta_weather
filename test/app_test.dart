// Copyright (c) 2021, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter_test/flutter_test.dart';
import 'package:meta_weather/app/app.dart';
import 'package:meta_weather/base/index.dart';
import 'package:meta_weather/feature/weather/presentation/page/search_page.dart';

import 'test_injection.dart';

void main() async {
  configureTestInjection();
  await configureDependencies(environment: 'test');
  group('App', () {
    testWidgets('renders SearchPage', (tester) async {
      await tester.pumpWidget(const App());
      expect(find.byType(SearchPage), findsOneWidget);
    });
  });
}
