import 'package:meta_weather/base/index.dart';
import 'package:meta_weather/feature/weather/domain/entity/location_entity.dart';
import 'package:meta_weather/feature/weather/remote/model/index.dart';

class LocationMapper extends Mapper<LocationModel, LocationEntity> {
  @override
  LocationModel mapFromEntity(LocationEntity type) {
    return LocationModel();
  }

  @override
  LocationEntity mapFromModel(LocationModel type) {
    var lattLong =
        type.lattLong?.split(',').map(double.tryParse).toList() ?? [0, 0];
    return LocationEntity(
        id: type.woeid?.toString() ?? '',
        name: type.title ?? '',
        lat: lattLong[0] ?? -1,
        long: lattLong[1] ?? -1);
  }
}
