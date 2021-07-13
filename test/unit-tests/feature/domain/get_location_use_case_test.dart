import 'package:meta_weather/base/result/result.dart';
import 'package:meta_weather/feature/weather/domain/entity/location_entity.dart';
import 'package:meta_weather/feature/weather/domain/repository/weather_repository.dart';
import 'package:meta_weather/feature/weather/domain/use_case/get_location_use_case.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class MockWeatherRepository extends Mock implements WeatherRepository {}

const cairo = LocationEntity(id: '1', name: 'Cairo', lat: 11, long: 11);
void main() {
  group('get location UseCase test', () {
    late WeatherRepository weatherRepository;
    late GetLocationUseCase cityLocationUseCase;
    setUp(() {
      weatherRepository = MockWeatherRepository();
      cityLocationUseCase = GetLocationUseCase(weatherRepository);
    });
    test('test group', () {
      when(() => weatherRepository.getLocation('Cairo'))
          .thenAnswer((_) => Future.value(const CustomResult(cairo)));
      expect(
          cityLocationUseCase.execute(
              params: GetLocationParams(cityName: 'Cairo')),
          completion(const CustomResult(cairo)));
    });
  });
}
