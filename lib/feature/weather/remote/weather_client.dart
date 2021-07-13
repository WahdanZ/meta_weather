import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import 'model/index.dart';

part 'weather_client.g.dart';

@RestApi()
@injectable
abstract class WeatherClient {
  @factoryMethod
  factory WeatherClient(@Named('weather_dio') Dio dio,
      {@Named('base_url') String baseUrl}) = _WeatherClient;

  @GET('/api/location/search/')
  Future<List<LocationModel>> getLocation(@Query('query') String city);

  @GET('/api/location/{locationId}/')
  Future<WeatherResponse> getWeather(@Path('locationId') String locationId);
}
