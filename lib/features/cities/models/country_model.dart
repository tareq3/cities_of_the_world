import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'country_model.freezed.dart';

part 'country_model.g.dart';

@HiveType(typeId: 2)
@freezed
class CountryModel with _$CountryModel {
  const factory CountryModel({
    @HiveField(0) @JsonKey(name: 'id') int? id,
    @HiveField(1) @JsonKey(name: 'name') String? name,
    @HiveField(3) @JsonKey(name: 'code') String? code,
    @HiveField(4) @JsonKey(name: 'created_at') String? createdAt,
    @HiveField(5) @JsonKey(name: 'updated_at') String? updatedAt,
    @HiveField(6) @JsonKey(name: 'continent_id') int? continentId,
  }) = _CountryModel;

  factory CountryModel.fromJson(Map<String, Object?> json) =>
      _$CountryModelFromJson(json);
}
