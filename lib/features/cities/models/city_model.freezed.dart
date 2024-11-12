// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'city_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CityModel _$CityModelFromJson(Map<String, dynamic> json) {
  return _CityModel.fromJson(json);
}

/// @nodoc
mixin _$CityModel {
  @HiveField(0)
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(name: 'local_name')
  String? get localName => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(name: 'lat')
  double? get lat => throw _privateConstructorUsedError;
  @HiveField(3)
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @HiveField(4)
  @JsonKey(name: 'lng')
  double? get lng => throw _privateConstructorUsedError;
  @HiveField(5)
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @HiveField(6)
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  @HiveField(7)
  @JsonKey(name: 'country_id')
  int? get countryId => throw _privateConstructorUsedError;
  @HiveField(8)
  @JsonKey(name: 'country')
  CountryModel? get country => throw _privateConstructorUsedError;

  /// Serializes this CityModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CityModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CityModelCopyWith<CityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityModelCopyWith<$Res> {
  factory $CityModelCopyWith(CityModel value, $Res Function(CityModel) then) =
      _$CityModelCopyWithImpl<$Res, CityModel>;
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: 'name') String? name,
      @HiveField(1) @JsonKey(name: 'local_name') String? localName,
      @HiveField(2) @JsonKey(name: 'lat') double? lat,
      @HiveField(3) @JsonKey(name: 'id') int? id,
      @HiveField(4) @JsonKey(name: 'lng') double? lng,
      @HiveField(5) @JsonKey(name: 'created_at') String? createdAt,
      @HiveField(6) @JsonKey(name: 'updated_at') String? updatedAt,
      @HiveField(7) @JsonKey(name: 'country_id') int? countryId,
      @HiveField(8) @JsonKey(name: 'country') CountryModel? country});

  $CountryModelCopyWith<$Res>? get country;
}

/// @nodoc
class _$CityModelCopyWithImpl<$Res, $Val extends CityModel>
    implements $CityModelCopyWith<$Res> {
  _$CityModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CityModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? localName = freezed,
    Object? lat = freezed,
    Object? id = freezed,
    Object? lng = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? countryId = freezed,
    Object? country = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      localName: freezed == localName
          ? _value.localName
          : localName // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      lng: freezed == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      countryId: freezed == countryId
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as int?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as CountryModel?,
    ) as $Val);
  }

  /// Create a copy of CityModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CountryModelCopyWith<$Res>? get country {
    if (_value.country == null) {
      return null;
    }

    return $CountryModelCopyWith<$Res>(_value.country!, (value) {
      return _then(_value.copyWith(country: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CityModelImplCopyWith<$Res>
    implements $CityModelCopyWith<$Res> {
  factory _$$CityModelImplCopyWith(
          _$CityModelImpl value, $Res Function(_$CityModelImpl) then) =
      __$$CityModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: 'name') String? name,
      @HiveField(1) @JsonKey(name: 'local_name') String? localName,
      @HiveField(2) @JsonKey(name: 'lat') double? lat,
      @HiveField(3) @JsonKey(name: 'id') int? id,
      @HiveField(4) @JsonKey(name: 'lng') double? lng,
      @HiveField(5) @JsonKey(name: 'created_at') String? createdAt,
      @HiveField(6) @JsonKey(name: 'updated_at') String? updatedAt,
      @HiveField(7) @JsonKey(name: 'country_id') int? countryId,
      @HiveField(8) @JsonKey(name: 'country') CountryModel? country});

  @override
  $CountryModelCopyWith<$Res>? get country;
}

/// @nodoc
class __$$CityModelImplCopyWithImpl<$Res>
    extends _$CityModelCopyWithImpl<$Res, _$CityModelImpl>
    implements _$$CityModelImplCopyWith<$Res> {
  __$$CityModelImplCopyWithImpl(
      _$CityModelImpl _value, $Res Function(_$CityModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CityModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? localName = freezed,
    Object? lat = freezed,
    Object? id = freezed,
    Object? lng = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? countryId = freezed,
    Object? country = freezed,
  }) {
    return _then(_$CityModelImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      localName: freezed == localName
          ? _value.localName
          : localName // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      lng: freezed == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      countryId: freezed == countryId
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as int?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as CountryModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CityModelImpl implements _CityModel {
  const _$CityModelImpl(
      {@HiveField(0) @JsonKey(name: 'name') this.name,
      @HiveField(1) @JsonKey(name: 'local_name') this.localName,
      @HiveField(2) @JsonKey(name: 'lat') this.lat,
      @HiveField(3) @JsonKey(name: 'id') this.id,
      @HiveField(4) @JsonKey(name: 'lng') this.lng,
      @HiveField(5) @JsonKey(name: 'created_at') this.createdAt,
      @HiveField(6) @JsonKey(name: 'updated_at') this.updatedAt,
      @HiveField(7) @JsonKey(name: 'country_id') this.countryId,
      @HiveField(8) @JsonKey(name: 'country') this.country});

  factory _$CityModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CityModelImplFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(name: 'name')
  final String? name;
  @override
  @HiveField(1)
  @JsonKey(name: 'local_name')
  final String? localName;
  @override
  @HiveField(2)
  @JsonKey(name: 'lat')
  final double? lat;
  @override
  @HiveField(3)
  @JsonKey(name: 'id')
  final int? id;
  @override
  @HiveField(4)
  @JsonKey(name: 'lng')
  final double? lng;
  @override
  @HiveField(5)
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @HiveField(6)
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @override
  @HiveField(7)
  @JsonKey(name: 'country_id')
  final int? countryId;
  @override
  @HiveField(8)
  @JsonKey(name: 'country')
  final CountryModel? country;

  @override
  String toString() {
    return 'CityModel(name: $name, localName: $localName, lat: $lat, id: $id, lng: $lng, createdAt: $createdAt, updatedAt: $updatedAt, countryId: $countryId, country: $country)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CityModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.localName, localName) ||
                other.localName == localName) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.lng, lng) || other.lng == lng) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.countryId, countryId) ||
                other.countryId == countryId) &&
            (identical(other.country, country) || other.country == country));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, localName, lat, id, lng,
      createdAt, updatedAt, countryId, country);

  /// Create a copy of CityModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CityModelImplCopyWith<_$CityModelImpl> get copyWith =>
      __$$CityModelImplCopyWithImpl<_$CityModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CityModelImplToJson(
      this,
    );
  }
}

abstract class _CityModel implements CityModel {
  const factory _CityModel(
      {@HiveField(0) @JsonKey(name: 'name') final String? name,
      @HiveField(1) @JsonKey(name: 'local_name') final String? localName,
      @HiveField(2) @JsonKey(name: 'lat') final double? lat,
      @HiveField(3) @JsonKey(name: 'id') final int? id,
      @HiveField(4) @JsonKey(name: 'lng') final double? lng,
      @HiveField(5) @JsonKey(name: 'created_at') final String? createdAt,
      @HiveField(6) @JsonKey(name: 'updated_at') final String? updatedAt,
      @HiveField(7) @JsonKey(name: 'country_id') final int? countryId,
      @HiveField(8)
      @JsonKey(name: 'country')
      final CountryModel? country}) = _$CityModelImpl;

  factory _CityModel.fromJson(Map<String, dynamic> json) =
      _$CityModelImpl.fromJson;

  @override
  @HiveField(0)
  @JsonKey(name: 'name')
  String? get name;
  @override
  @HiveField(1)
  @JsonKey(name: 'local_name')
  String? get localName;
  @override
  @HiveField(2)
  @JsonKey(name: 'lat')
  double? get lat;
  @override
  @HiveField(3)
  @JsonKey(name: 'id')
  int? get id;
  @override
  @HiveField(4)
  @JsonKey(name: 'lng')
  double? get lng;
  @override
  @HiveField(5)
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @HiveField(6)
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @HiveField(7)
  @JsonKey(name: 'country_id')
  int? get countryId;
  @override
  @HiveField(8)
  @JsonKey(name: 'country')
  CountryModel? get country;

  /// Create a copy of CityModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CityModelImplCopyWith<_$CityModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
