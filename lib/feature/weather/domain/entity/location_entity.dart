import 'package:equatable/equatable.dart';

class LocationEntity extends Equatable {
  const LocationEntity(
      {required this.id,
      required this.name,
      required this.lat,
      required this.long});

  final String id;
  final double lat;
  final double long;
  final String name;

  @override
  List<Object?> get props => [name, id, lat, long];
}
