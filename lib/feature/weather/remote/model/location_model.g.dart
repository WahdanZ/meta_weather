// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocationModel _$LocationModelFromJson(Map<String, dynamic> json) {
  return LocationModel(
    lattLong: json['lattLong'] as String?,
    woeid: json['woeid'] as int?,
    title: json['title'] as String?,
    locationType: json['locationType'] as String?,
  );
}

Map<String, dynamic> _$LocationModelToJson(LocationModel instance) =>
    <String, dynamic>{
      'lattLong': instance.lattLong,
      'woeid': instance.woeid,
      'title': instance.title,
      'locationType': instance.locationType,
    };
