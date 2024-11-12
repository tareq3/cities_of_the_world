import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

import 'country_model.dart';
part 'city_model.freezed.dart';

part 'city_model.g.dart';
@HiveType(typeId: 1)
@freezed
class CityModel with _$CityModel {
  const factory CityModel({
 @HiveField(0)  @JsonKey(name: 'name') String? name,
 @HiveField(1)  @JsonKey(name: 'local_name') String? localName,
 @HiveField(2)  @JsonKey(name: 'lat') double? lat,
 @HiveField(3)  @JsonKey(name: 'id') int? id,
 @HiveField(4)  @JsonKey(name: 'lng') double? lng,
 @HiveField(5)  @JsonKey(name: 'created_at') String? createdAt,
 @HiveField(6)  @JsonKey(name: 'updated_at') String? updatedAt,
 @HiveField(7)  @JsonKey(name: 'country_id') int? countryId,
 @HiveField(8)  @JsonKey(name: 'country') CountryModel? country,
  }) = _CityModel;

  factory CityModel.fromJson(Map<String, Object?> json) =>
      _$CityModelFromJson(json);
}
