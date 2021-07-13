import 'package:json_annotation/json_annotation.dart';

part 'location_model.g.dart';

@JsonSerializable()
class LocationModel {
//JsonName:latt_long
  String? lattLong;

//JsonName:woeid
  int? woeid;

//JsonName:title
  String? title;

//JsonName:location_type
  String? locationType;

  LocationModel({
    this.lattLong,
    this.woeid,
    this.title,
    this.locationType,
  });
  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$LocationModelFromJson(json);
  Map<String, dynamic> toJson(instance) => _$LocationModelToJson(this);
}
